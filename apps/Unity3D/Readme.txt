If Unity is installed in the default location, just run unity-patcher executable:
~sudo ./unity-patcher
After patching copy Unity_lic.ulf to /Library/Application Support/Unity/

**in case have unity in somewhere else you should add the location to your Unity.app:
~sudo ./unity-patcher /Applications/Unity/Unity.app

[To revert the patch]
~sudo ./unity-patcher -revert /Applications/Unity/Unity.app
then make sure to restore the original Unity_lic.ulf or delete it so Unity can generate a genuine license file.

WWW.DOWNLOADLY.IR