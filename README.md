# How-to-Compile
## Sync AICP (Android Ice Cold Project)
Follow [AOSP Building instructions] (http://source.android.com/source/index.html) to initialize a build environment. (Don’t sync AOSP!)
### Initializing Repository


Initialize Repo:

    $ mkdir -p ~/android/saber/aicp
    $ cd ~/android/saber/aicp
    $ repo init -u https://github.com/AICP/platform_manifest.git -b lp5.1


Sync Repo :

    $ repo sync

***
### Sync SaberMod components from GitHub
This is preferably done with the use of a localmanifest

Grab the latest aicp_manifest and add it to your local manifest

    $ cd ~/android/saber/aicp
    $ mkdir .repo/local_manifests/
    $ curl https://raw.githubusercontent.com/SMAICP/localmanifest/master/aicp_manifest.xml > .repo/local_manifests/aicp_manifest.xml
    
Re-Sync repo to get changes from local manifest

    $ repo sync
***
### Add toolchains required to build from [sabermod.net] (http://sabermod.net)
Detailed guide coming soon.
