<<<<<<< HEAD
SMC Tool by David R (Discord: Muerto#6935)\
=======
SMC Tool by David R (Discord: Muerto#6935)
>>>>>>> d47efcdd8487e6db01db7cb975fc25b55b431046
This project aims to make flashing a Mac SMC quicker and easier.

Thanks to:
Paul L Daniels, pbatard, Logi.wiki, EineWildeStehlampe

Current Version: 1.0.3

------------------------------------------------------------------------------------------------------------------------
**Creating a USB disk:**

Option A: Copy the SMC_Tool.iso to disk using a bootable USB creator.\
Option B: Manually copy the SMC_Tool.iso files to a formatted USB (ExFAT, FAT32, or HFS+).\
`Hidden files must be shown, otherwise the volume icon and name may not transfer, thus the disk will show as 'EFI Boot'.`\
Option C: Write the raw SMC_Tool.img to disk with ddrescue, or similar.

 *Make sure to use a Master Boot Record (MBR) filesystem. GPT was causing multiple problems.

------------------------------------------------------------------------------------------------------------------------
**Flashing an SMC:**

  1. Boot into the disk and let startup.nsh run.
  2. Type the boardnumber.nsh you want to flash, e.g: '820-00165.nsh', the script will then flash your SMC.
  3. Type 'exit' to reboot, or power off machine to complete the process.

  Quick video here:
  https://www.youtube.com/watch?v=nUm30m3zNxI

------------------------------------------------------------------------------------------------------------------------
**Currently supported boards:**

A1465 820-3435  (Mojave Firmware)   Type: 820-3435.nsh\
A1466 820-3437  (Mojave Firmware)   Type: 820-3437.nsh\
A1465 820-00164 (Mojave Firmware)   Type: 820-00164.nsh\
A1466 820-00165 (Mojave Firmware)   Type: 820-00165.nsh\
A1502 820-3476  (Mojave Firmware)   Type: 820-3476.nsh\
A1502 820-4924  (Mojave Firmware)   Type: 820-4924.nsh\
A1398 820-3662  (Mojave Firmware)   Type: 820-3662.nsh\
A1398 820-00138 (Yosemite Firmware) Type: 820-00138.nsh\
A1398 820-00426 (Yosemite Firmware) Type: 820-00426.nsh

------------------------------------------------------------------------------------------------------------------------
**I flashed the wrong SMC firmware:**

In most cases, all you'll need to do is reboot and flash again with the correct firmware. In some cases you MAY brick the system, however, after much testing I've never achieved a bricked board by flashing an incorrect firmware. If a system is somehow rendered 'bricked' and you cannot get to the boot menu, you must replace the SMC.

------------------------------------------------------------------------------------------------------------------------
**I want to flash the SMC firmware with a different version than the one included:**

You can replace the update, base and app code image in the respective folder, say 820-00165 would be 'payloads\Mac-937CB26E2E02BB01'.

------------------------------------------------------------------------------------------------------------------------
**What is an SMC?:**

Get outta here scrub.

------------------------------------------------------------------------------------------------------------------------
**Licenses and acknowledgements:**

  Many thanks to Logi.wiki and the authors/creators of the SMC Flashing information:
  https://logi.wiki/index.php?title=SMC_flashing

  This project utilizes UEFI Shell v2.0, release 4.632 (2010.05.27)
  https://github.com/pbatard/UEFI-Shell/releases/tag/4.632
  The IA32 image has been removed

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
