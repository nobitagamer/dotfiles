# coding=utf-8
import os
import subprocess, sys
import dotbot
from enum import Enum

class PkgStatus(Enum):
    UP_TO_DATE = 'Already up to date'
    ALREADY_NEWEST = 'is already the newest version' # Ubuntu 18.04+
    INSTALLED = 'Newly installed'
    NOT_FOUND = 'Not found'
    NOT_SURE = 'Could not determine'

class AptGet(dotbot.Plugin):
    _directive = 'aptget'

    def __init__(self, context):
        super(AptGet, self).__init__(self)
        self._context = context
        self._strings = {}
        self._strings[PkgStatus.UP_TO_DATE] = ["is already the newest", "ist bereits die neueste"]
        self._strings[PkgStatus.INSTALLED] = ["NEUEN Pakete werden installiert"]
        self._strings[PkgStatus.NOT_FOUND] = ["Unable to locate package", "kann nicht gefunden werden"]

    def can_handle(self, directive):
        return directive == self._directive

    def handle(self, directive, data):
        if directive != self._directive:
            raise ValueError('AptGet cannot handle directive %s' %
                directive)
        return self._process_packages(data)

    def _process_packages(self, packages):
        defaults = self._context.defaults().get('aptget', {})
        results = {}
        successful = [PkgStatus.UP_TO_DATE, PkgStatus.INSTALLED, PkgStatus.ALREADY_NEWEST]
        command_prefix = ""

        if os.geteuid() != 0:
            command_prefix = "sudo "

        success = True

        cleaned_packages = self._dispatch_names_and_sources(packages)
        if cleaned_packages['sources']:
            for source in cleaned_packages['sources']:
                success &= self._add_ppa(source, command_prefix)

        # apt-get update
        success = self._update_index(command_prefix)
        if not success:
            return success

        for pkg_name in cleaned_packages['packages']:
            try:
                result = self._install(pkg_name, command_prefix)
                results[result] = results.get(result, 0) + 1
                if result not in successful:
                    self._log.error("[{}] Could not install package '{}'".format(result, pkg_name))
            except Exception as ex:
                self._log.error('Failed to parse result: {} {}'.format(ex, result))
                return False

        if all([result in successful for result in results.items()]):
            self._log.info('All packages installed successfully')
            success = True
        else:
            sucess = False

        for status, amount in results.items():
            log = self._log.info if status in successful else self._log.error
            log('{} {}'.format(amount, status.value))

        return success

    def _add_ppa(self, source, command_prefix):
        success = False
        if 'ppa:' not in source:
            source = 'ppa:%s' % source

        # NB: Trying to avoid subprocess.Popen(), as this command is pretty simple
        cmd = '{}add-apt-repository --yes {}'.format(command_prefix, source)

        try:
            process = subprocess.Popen(cmd, shell=True,
                                       stdout=subprocess.PIPE,
                                       stderr=subprocess.STDOUT)
            out = process.stdout.read()
            process.stdout.close()

            self._log.info('Successfully added PPA "%s"' % source)
            success = True
        except subprocess.CalledProcessError as e:
            self._log.lowinfo('PPA "%s": %s' % (source, e.output))
            success = False
        except Exception as e:
            self._log.lowinfo('Failed to add PPA "%s": %s' % (source, e))
            success = False
        return success

    def _dispatch_names_and_sources(self, packages):
        '''
        Returns cleaned dict with list of sources and dict of packages.
        {"sources": [], "packages": {"packaga_name": "upgrade"}}
        '''
        cleaned_dict = {'sources': [], 'packages': []}
        if isinstance(packages, str):
            cleaned_dict['packages'].append(packages)
        elif isinstance(packages, list):
            for pkg_name in packages:
                cleaned_dict['packages'].append(pkg_name)
        elif isinstance(packages, dict):
            for pkg_name, pkg_opts in packages.items():
                cleaned_dict['packages'].append(pkg_name)
                if isinstance(pkg_opts, dict):
                    if 'ppa_source' in pkg_opts.keys():
                        cleaned_dict['sources'].append(pkg_opts['ppa_source'])
                else:
                    if pkg_opts:
                        cleaned_dict['sources'].append(pkg_opts)
        return cleaned_dict

    def  _update_index(self, command_prefix):
        self._log.info("Updating APT package index")
        cmd = '{}apt-get update'.format(command_prefix)

        try:
            process = subprocess.Popen(cmd, shell=True,
                                       stdout=subprocess.PIPE,
                                       stderr=subprocess.STDOUT)
            out = process.stdout.read()
            process.stdout.close()

            # ## run it ##
            # process = subprocess.Popen(cmd, shell=True, stderr=subprocess.PIPE)

            # ## But do not wait till netstat finish, start displaying output immediately ##
            # while True:
            #     out = process.stderr.read(1)
            #     if out == b'' and process.poll() is not None:
            #         break
            #     if out != '':
            #         sys.stdout.write(out.decode(sys.stdout.encoding))
            #         sys.stdout.flush()

            # ret = process.poll()

            self._log.info('APT package index updated successfully')
            return True
        except Exception as e:
            self._log.error('Failed to update index: {}'.format(e))
            return False

    def _install(self, pkg, command_prefix):
        self._log.info("Installing package {}".format(pkg))
        cmd = '{}apt-get install {} -y'.format(command_prefix, pkg)

        try:
            ## run it ##
            process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

            ## But do not wait till netstat finish, start displaying output immediately ##
            out = ''
            while True:
                buff = process.stdout.read(1).decode(sys.stdout.encoding)
                if buff == '' and process.poll() is not None:
                    break
                if buff != '':
                    out += buff
                    # sys.stdout.write(buff)
                    # sys.stdout.flush()

            ret = process.poll()

            for key, value in self._strings.items():
                for text in self._strings[key]:
                    try:
                        index = out.find(text)
                    except:
                        index = 0

                    if index >= 0:
                        return key
        except Exception as e:
            self._log.error('Failed to install package: {}'.format(e))
            return PkgStatus.NOT_SURE

        self._log.error("Could not determine what happened with package {}".format(pkg))
        return PkgStatus.NOT_SURE

