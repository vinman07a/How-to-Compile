# How-to-Compile
####**Note** AICP with SaberMod is currently only for GNU/Linux based Operating Systems. An example of a GNU/Linux Operation Sytem is [Ubuntu] (http://www.ubuntu.com/).
## Sync AICP (Android Ice Cold Project)
Follow [AOSP Building instructions] (http://source.android.com/source/index.html) to initialize a build environment. (Don’t sync AOSP!)
### Initializing Repository


Initialize Repo:
```bash
$ mkdir -p ~/android/saber/aicp
$ cd ~/android/saber/aicp
$ repo init -u https://github.com/AICP/platform_manifest.git -b lp5.1
```

Sync Repo :

```bash
$ repo sync
```

***
## Sync SaberMod components from GitHub
This is preferably done with the use of a localmanifest

Grab the latest aicp_manifest and add it to your local manifest
```bash
$ cd ~/android/saber/aicp
$ mkdir .repo/local_manifests/
$ curl https://raw.githubusercontent.com/SMAICP/localmanifest/master/aicp_manifest.xml > .repo/local_manifests/aicp_manifest.xml
```
Re-Sync repo to get changes from local manifest

```bash
$ repo sync
```
***
## Add toolchains required to build from [sabermod.net] (http://sabermod.net)
This portion of the guide is a **Work in Progress**.

### Information about GCC toolchains added and removed
**Note:** you may not use all of these toolchains, but it is good to have them in case they are needed for future configuration changes.

The following **SaberMod** toolchain is already downloaded and installed via localmanifest:
- aarch64-linux-android-4.9

More will hopefully be installed for you via local manifest in the future.
***
The following **stock** toolchaines are **removed** via localmanifest:
- aarch64-linux-android-4.8
- aarch64-linux-android-4.9
- arm-linux-androideabi-4.8
- arm-eabi-4.8

***
The following toolchains currently **need to be installed by running a simple script**
- arm-eabi-4.8
- arm-eabi-4.9
- arm-eabi-5.1
- arm-eabi-6.0
- arm-linux-androideabi-4.9
- aarch64-4.9
- aarch64-5.1
- aarch64-6.0

*Script coming soon*
***
