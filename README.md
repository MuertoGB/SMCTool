**SMC Tool by David R:**
-
This tool is aimed at MacBook logic board technicians, and makes flashing a MacBook SMC quicker and easier. It not only saves time, but money, as a specific donor SMC isn't necessary to have 'on hand'. Simply take a donor SMC from another board, replace and flash.

Currently, a full list of SMC compatibility between boards is unestablished. I recommend you keep the board years as close as possible when taking a donor SMC from a non-matching board.

This tool is based on the work from  [logi.wiki](https://logi.wiki/index.php?title=SMC_flashing).\
SMC Tool tested by Paul L Daniels on [YouTube](https://www.youtube.com/watch?v=q8LEh8C4iYo).

Discord: `Muerto#6935`

Thanks to:\
Paul L Daniels, pbatard, Logi.wiki, EineWildeStehlampe.

------------------------------------------------------------------------------------------------------------------------
**Download:**
-
Current Version: `1.0.3`\
Images can be acquired in the [releases](https://github.com/MuertoGB/SMCTool/releases) section.

------------------------------------------------------------------------------------------------------------------------
**Creating a USB disk:**
-
To begin, format a USB disk in ExFAT, FAT32 or HFS+ with a Master Boot Record (MBR) filesystem. Then....

- Option A: Manually copy the SMC_Tool.iso files to the formatted USB disk.\
`Hidden files must be shown, otherwise the volume icon and name may not transfer, thus the disk will show as 'EFI Boot'.`
- Option B: Write the raw SMC_Tool.img to disk with ddrescue, or similar.

**NOTE:** You may use a bootable USB creation tool, however, make sure to use the correct filesystem when formatting.

------------------------------------------------------------------------------------------------------------------------
**Flashing the SMC:**
-
  1. Plug in your USB disk and power on the Mac whilst holding the `Option ⌥` key.
  2. Load into `SMC Tool` from the boot menu and let startup.nsh run.
  3. Type the boardnumber.nsh you want to flash, e.g: `820-00165.nsh`, then press return, the script will then flash the SMC.
  4. Type 'exit' to reboot, or power off machine to complete the process.

  Quick video of flashing an SMC [here](  https://www.youtube.com/watch?v=nUm30m3zNxI).

------------------------------------------------------------------------------------------------------------------------
**Compatible Boards:**
-
>A1465 820-3435  (Mojave Firmware)   Type: `820-3435.nsh`\
A1466 820-3437  (Mojave Firmware)   Type: `820-3437.nsh`\
A1465 820-00164 (Mojave Firmware)   Type: `820-00164.nsh`\
A1466 820-00165 (Mojave Firmware)   Type: `820-00165.nsh`\
A1502 820-3476  (Mojave Firmware)   Type: `820-3476.nsh`\
A1502 820-4924  (Mojave Firmware)   Type: `820-4924.nsh`\
A1398 820-3662  (Mojave Firmware)   Type: `820-3662.nsh`\
A1398 820-00138 (Yosemite Firmware) Type: `820-00138.nsh`\
A1398 820-00426 (Yosemite Firmware) Type: `820-00426.nsh`

------------------------------------------------------------------------------------------------------------------------

**Compatible SMCs:**
-

✅ Texus Instruments LM4 BGA157\
❓ Texus Instruments TM4 BGA168\
❓ Renesas DF2117 BGA145

Currently, only MacBooks are supported. If enough requests I'll add iMac, Mac Mini, etc.

------------------------------------------------------------------------------------------------------------------------
**Why must the firmware be flashed:**
-

Each SMC for its respective board are specifically programmed for that board model. Booting a machine with the incorrect SMC firmware causes erratic behaviour.

------------------------------------------------------------------------------------------------------------------------
**If you flash the wrong firmware:**
-

In most cases you can reboot and flash again with the correct firmware. In some cases you **may** brick the system, however, after much testing I've never achieved a bricked board by flashing an incorrect firmware.

If a system is somehow rendered 'bricked' and will not get to the boot menu, you must replace the SMC again.

I am not responsible if you do something wrong, if you're here I expect you know what you're doing. If your dad's uncle's friend suggested you use this as your MacBook fan is running too fast, I suggest you turn around and leave.

------------------------------------------------------------------------------------------------------------------------
**You want to flash a different firmware:**
-
You can replace the update, base and app code image in the respective folder, say 820-00165 would be `payloads\Mac-937CB26E2E02BB01`.

Alternative SMC payloads can be found in firmwareupdate.pkg inside the MacOS Install.ESD file, or [here](https://github.com/sadponyguerillaboy/SMC-Toolkit/tree/main/SMCPayloads).

------------------------------------------------------------------------------------------------------------------------
**SMC hardware flashing:**
-
I'm actively investing time into this. So far it has proved not to be worth the time and effort, on top of this its getting harder to acquire blank TI LM4F and you must manually build a 256k binary. This tool has slighlty toppled my will to continue putting effort in. However, I will keep going, no promises you'll hear any more about it.

------------------------------------------------------------------------------------------------------------------------

**EFI Screen resolution:**
-
Use the `mode` command to display a list of supported screen modes, then type the highest mode available e.g. `mode 160 47`, then press return.

The script will automatically switch screen mode when it can.

------------------------------------------------------------------------------------------------------------------------
**Licenses and acknowledgements:**
-

Apple Terminal icon by [jonc](https://macosicons.com/#/u/jonc) on macOSicons.

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
