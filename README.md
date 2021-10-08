# clean-up-script
This script cleans specific folders on Windows and written in Powershell.


Let's say we have a folder which contains directories and files under this directories. We are not interested in how many directories and files under this folder.
For example:

D:\nugetdata\packages\
        -----projectfolder1
             ----*.nuget
        -----projectfolder2
              .
              .
              .
        ----projectfoldern
        
Under each Project folders, we have build artifact files. Again we dont know how many and not interested at all.

With this script, we can skip last specific number of directories under this folder and delete others recursively.

Be sure that, first add -Whatif flag at last line to see which files to be deleted and then run without this flag.

