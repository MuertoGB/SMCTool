
<h1 align="center">
<img width="200" src="resource/img/icon256.png" alt="SMCTool Logo">
<br>
SMCTool
</h1>

<h4 align="center">Making SMC flashing quicker and easier.</h4>

<p align="center">
  <a href="#about">About</a> •
  <a href="#download">Download</a> •
  <a href="#bootable-usb">Bootable USB</a> •
  <a href="#flashing-an-smc">Flashing An SMC</a> •
  <a href="#compatibility">Compatibility</a> •
  <a href="#disclaimers">Disclaimers</a> •
  <a href="#acknowledgements">Acknowledgements</a> •
  <a href="#thanks">Thanks</a> •
  <a href="#donate">Donate</a> •
  <a href="#licenses">Licenses</a>
</p>

## About

This bootable shell is used to program a Mac LM4F (Stellaris) System Management Controller (SMC) in EFI mode with the correct stock firmware, this enables a technician to replace a faulty SMC with a donor from a non-matching machine. This not only saves time, but money, as a specific donor SMC isn't necessary to have 'on hand'; simply take a donor SMC* from another board, replace it, and flash with this handy bootable software.

> ⚠ *Currently, a full list of SMC boot compatibility between boards has not been established, I recommend you keep the platform and GPU type the same (MacBook, iMac, Mac Mini), (iGPU, dGPU).

## Download

| Version| Release Date| Latest|
|--------|-------------|--------|
| [V1.0.7](https://github.com/MuertoGB/SMCTool/releases/tag/v1.0.7)| 18th February 2023   | `Yes`  |

> 📔 See the [Changelog](CHANGELOG.md).

## Bootable USB

To begin, format a USB disk in ExFAT, FAT32, VFAT or HFS+ for use with SMCTool.
> ⚠ FAT32 using a GPT partition table is recommended.

Once the memory stick is ready, you can do any of the following:
- Option A: Manually copy all files from the ISO to the formatted memory stick.
- Option B: Write the image to the memory stick with ddrescue, Passmark imageUSB, or similar.
- Option C: Use a bootable USB creation tool and select the ISO, or image as the source file, and the memory stick as the destination.

> ❕ Extended instructions [here](BOOTABLEUSB.md).

## Flashing An SMC

1. Remove the internal storage drive.
2. If you have a portable device, plug in the power adapter.
3. Insert your USB stick, then power on the device whilst holding `Option ⌥`.
4. Load into SMCTool from the boot menu and let 'startup.nsh' run.
5. Type the 'boardnumber.nsh' you want to flash, e.g: `820-00165.nsh`, then press return; the script will then flash the SMC.
6. Type `exit` to reboot, or power off machine to complete the process.

**Why must the SMC be flashed?:**\
Each System Management Controller is specifically programmed for it's counterpart board, and is in charge of managing video, hibernation, battery charging, thermal and power management. Incorrect or mismatched firmware causes erratic behaviour such as broken display resolution, high fan speed, throttling, and crashing.

**I flashed an incorrect firmware:**\
No problem, just type the correct board number and the correct payload will be flashed. If you restart, or power off after an incorrect payload flash you may brick the device. If a system is somehow rendered 'bricked', and cannot get to the boot menu, you must replace the SMC again. You can always put the incorrectly flashed SMC aside for future use on a board it was 'accidentally' programmed for.

> 💻 Quick video of flashing an SMC [here](https://www.youtube.com/watch?v=nUm30m3zNxI).

## Compatibility

**Devices:**

| Devices| Supported?   | Planned?|
|--------|-------------|--------|
| MacBook| ✅          | `N/A`  |
| Mac Mini|✅          | `N/A`  |
| iMac | ❌            | `In development`  |
| Mac Pro| ❌          | `No`  |

> ℹ See the [compatibility information](COMPATIBILITY.md) for a full list of supported models.

**System Management Controllers:**

| SMC         | Supported?  | Planned?|
|----------------|-------------|---------|
| LM4F BGA157    | ✅          | `N/A`    |
| TM4C BGA168    | ❌         | `No`    |
| F2117LP BGA145 | ❌         | `No`    |

> ℹ Older single file payloads for boards such as 820-3115, 3332, and 3462 are currently being worked out. Support *may* be added in the future.

## Disclaimers

I'm not responsible if you do something wrong, if you're here I expect you to know what you're doing. Where I do my utmost to verify all information to my best ability, I'm not responsible for any mistakes my end either.

This is **not** a magical 'fix my Mac' tool, it has a specific purpose, which is flashing correct payloads to a System Management Controller with incorrect firmware. **Do not** flash your SMC if you have no reason to.

## Acknowledgements:

> 🖼 Startup manager icon by [KBuHT](https://macosicons.com/#/u/KBuHT) on macOSicons.\
> 💡 This project is based on the work from  [logi.wiki](https://logi.wiki/index.php?title=SMC_flashing).\
>🎥 SMC Tool tested by Paul L Daniels on [YouTube](https://www.youtube.com/watch?v=q8LEh8C4iYo).

## Thanks

**Paul L Daniels** for development help, and the kick to finish this project.\
**Logi.wiki** for the original work, which I could base this project on.\
**EineWildeStehlampe** for information and help regarding UEFI.\
**theSmudge** for being a great help verifying information.\
**Nobluesky** for verifying iMac board-id's.

## Donate

Donations do not go into my own pocket, they go back into research and development of applications to help others in the repair community. If you'd like to make a donation for my work, please [see here](https://www.buymeacoffee.com/Muerto).

## Licenses:

Incoming.
