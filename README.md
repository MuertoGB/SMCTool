**SMC Tool by David R:**
-
SMCTool is used to program Mac LM4F (Stellaris) System Management Controllers (SMC) in EFI mode with the correct stock firmware, which enables a technician to replace a faulty SMC with one from a non-matching machine. This not only saves time, but money, as a specific donor SMC isn't necessary to have 'on hand'; simply take a donor SMC* from another board, replace it, and flash with this handy bootable software.

*Currently, a full list of SMC boot compatibility between boards has not been established, I recommend you keep the platform and GPU type the same (MacBook, iMac, Mac Mini), (iGPU, dGPU).

💡 This project is based on the work from  [logi.wiki](https://logi.wiki/index.php?title=SMC_flashing).\
🎥 SMC Tool tested by Paul L Daniels on [YouTube](https://www.youtube.com/watch?v=q8LEh8C4iYo).

**Thanks to:-**\
**Paul L Daniels** for development help, and the kick to finish this project.\
**Logi.wiki** for the original work, which I could base this project on.\
**EineWildeStehlampe** for information and help regarding UEFI.\
**theSmudge** for being a great help verifying information.\
**Nobluesky** for verifying iMac board-id's.

☕ If you'd like to make a donation for my work, please [see here](https://www.buymeacoffee.com/Muerto). Cheers. ☕

---
**Before you start:**
-
* Before flashing an SMC the internal storage device should be removed otherwise 'startup.nsh' may not run.
* Ensure the charger is plugged in.

I'm not responsible if you do something wrong, if you're here I expect you to know what you're doing. Where I do my utmost to verify all information to my best ability, I'm also not responsible for any mistakes my end either. As they say, sometimes shit happens.

This is **not** a magical 'fix my Mac' tool, it has a specific purpose, which is flashing correct payloads to a System Management Controller with incorrect firmware. Do not flash your SMC if you have no reason to.

---
**Download:**
-
Current Version: `1.0.7` (16th February, 2023)\
Downloads can be acquired in the [releases](https://github.com/MuertoGB/SMCTool/releases) section.\
See the [Changelog](CHANGELOG.md).

---
**Creating a USB disk:**
-
To begin, format a USB disk in ExFAT, FAT32, VFAT or HFS+ using a GPT or MBR partition table, then....

- Option A: Manually copy all SMC_Tool.iso files to the formatted USB disk.
- Option B: Write the SMC_Tool.img to disk with ddrescue, Passmark imageUSB, or similar.
- Option C: Use a bootable USB creation tool and select SMC_Tool.iso as the source file.

Extended instructions [here](BOOTABLEUSB.md).

---
**Flashing the SMC:**
-
  1. Plug in your USB disk and power on the device whilst holding `Option ⌥`.
  2. Load into `SMC Tool` from the boot menu and let startup.nsh run.
  3. Type the 'boardnumber.nsh' you want to flash, e.g: `820-00165.nsh`, then press return, the script will then flash the SMC.
  4. Type 'exit' to reboot, or power off machine to complete the process.

  Quick video of flashing an SMC [here](https://www.youtube.com/watch?v=nUm30m3zNxI).

---
**Compatible Boards:**
-
Currently supporting MacBook, and Mac Mini, see the [compatibility information](COMPATIBILITY.md). iMac support is in development.

Older single file payloads for boards such as 820-3115, 3332, and 3462 are currently being worked out. Support *may* be added in the future.

---
**Compatible SMC:**
-
✅ Texus Instruments LM4 BGA157\
❌ Texus Instruments TM4 BGA168\
❌ Renesas DF2117 BGA145

---
**Why must the firmware be flashed:**
-
Each System Management Controller is specifically programmed for it's counterpart board, and is in charge of managing video, hibernation, battery charging, thermal and power management. Incorrect or mismatched firmware causes erratic behaviour such as broken display resolution, high fan speed, throttling, and crashing.

---
**If you flash the wrong firmware:**
-
You must immediately flash the correct firmware before powering off the system. In some cases you **might** brick the system if you reboot after flashing the incorrect firmware. After much testing I've never achieved a bricked board by flashing an incorrect firmware, however, others have mentioned 'no power' after loading the wrong SMC firmware for that board after a reboot, or power down.

If a system is somehow rendered 'bricked' and cannot get to the boot menu, you must replace the SMC again. You can always put the incorrectly flashed SMC aside for future use on a board it was 'accidentally' programmed for.

---
**If you want to flash a different firmware:**
-
You must replace the update, base, code and EPM in the respective folder, say 820-00165 would be `payloads\Mac-937CB26E2E02BB01`.

Alternative SMC payloads can be found in firmwareupdate.pkg inside the MacOS Install.ESD file, or [here](https://github.com/sadponyguerillaboy/SMC-Toolkit/tree/main/SMCPayloads).

---
**Screen resolution:**
-
Use the `mode` command to display a list of supported screen modes, type the highest mode available e.g. `mode 160 47`, then press return.

The script will automatically switch screen mode when it can.

---
**Licenses and acknowledgements:**
-
Startup manager icon by [KBuHT](https://macosicons.com/#/u/KBuHT) on macOSicons.

  *** UEFI Shell v2.0, release 4.632 ***

  This bootable image contains builds of the 2.0 UEFI Shell, as provided by the
  Open Source 'EDK' project (https://github.com/tianocore/edk).

  More specifically, this release, which we call '4.632', was produced using the
  Shell executables, built on 2010.05.07, and published at:
  https://github.com/tianocore/edk/tree/master/Other/Maintained/Application/UefiShell/bin

  This image supports the following UEFI platform architectures:
  * X64
  * IA32

  You are invited to validate that the binaries provided on this ISO are 100%
  identical to the ones from the official EDK project.

  For more information on this release, you are invited to visit our official
  project page at https://github.com/pbatard/UEFI-Shell.
