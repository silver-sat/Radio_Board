# Radio_Board
SilverSat Limited – https://silversat.org

This is the repository for the SilverSat Radio hardware design using KiCad 6.0.

The design is based on an Adafruit Metro M0 Express and the AX5043 add-on reference design.

# Setup
1. If you haven't already done so, download and install KiCad 6.0 from their website, https://www.kicad.org/download/. Depending on your system and Internet connection, than may take several hours.
2. On the top right of the repsitory's main page, click “Code” to select download options. On all operating systems, you can download and extract a ZIP archive to your perrfered folder. Alternatively, you can use one of the many free Git access programs available from the Internet. Here are instructions for a few common programs.
   * On Windows and Mac, you can download and install GitHub Desktop (https://desktop.github.com/) to access and manage Git repositories. See https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-a-repository-from-github-to-github-desktop for details.
   * There are also many command line interfaces available. For example, GitHub offers `gh` which can be downloaded from their repository (https://github.com/cli/cli). Once you install the client, navigate to your perferred folder and run the command given by our repository's Code tab.
   * On Unix and Linux, many software repositories offer `git` as an alternative to `gh`. You can download and install `git` from your package manager.
     - Debian-based Linux: `sudo apt install git`
     - RedHat Linux or derivatives: `sudo yum install git`
     - macOS (using [Homebrew](https://github.com/Homebrew/brew)): `brew install git`
   * For other programs, see their associated documentation for directions.
3. Download and install SilverSat's KiCad Library (https://github.com/silver-sat/kicad_library). Installation instructions are given on the library's README.md.
   - It is possible to skip this step, but some parts (such as the TCXO) may fail to load.¹
5. Open the project folder and open SilverSat_Comms.kicad_pro. KiCad will show the project schematic and PCB files.

# Files
| File name                 | Description                                                                              |
| ------------------------- | ---------------------------------------------------------------------------------------- |
| AX5043-backups            | _Description missing_                                                                    |
| Datasheets                | Datasheets for used parts                                                                |
| .gitignore                | Tells GitHub not to add specified file types to the repository                           |
| AX5043.kicad_prl          | _Description missing_                                                                    |
| AX5043.kicad_sch          | Clone of OnSemi's ADD5043-433-GEVK evaluation board for the AX5043                       |
| PASwitch.kicad_sch        | Power amplifier and Tx/Rx switch schematic                                               |
| PATempSensor.kicad_sch    | Schematic for the power amplifier's temperature sensor                                   |
| README.md                 | This file                                                                                |
| SAMD21.kicad_sch          | Schematic for an Arduino®-compatible computer, inspired by the Adafruit Metro M0 Express |
| SilverSat_Comms-cache.lib | Presumably KiCad's project cache                                                         |
| SilverSat_Comms.kicad_pcb | The radio board's PCB layout                                                             |
| SilverSat_Comms.kicad_prl | _Description missing_                                                                    |
| SilverSat_Comms.kicad_pro | The main KiCad project file, which can be used to access all other files                 |
| SilverSat_Comms.kicad_sch | The project's top-level schematic.                                                       |
| eFuse3V3.kicad_sch        | 3.3 volt e-fuse schematic                                                                |
| eFuse5V.kicad_sch         | 5 volt e-fuse schematic                                                                  |
| externalwatchdog.kicad_sch| Watchdog timer schematic                                                                 |
| pi_net.kicad_sch          | Unbalanced Pi Matching Network (KiCad schematic)                                         |
| pi_net.m                  | Unbalanced Pi Matching Network (MATLAB®² script)                                         |
| serial_driver.kicad_sch   | Serial port driver schematic                                                             |
| sym-lib-table             | Table of KiCad symbol libraries                                                          |

# Notes
¹ We have not yet tested whether this will work, but we presume based on past experience that the resulting error can be ignored. <br>
² MATLAB® is a registered trademark of The MathWorks, Inc.

## Known Issues
- KiCad 6, required by our project, is not supported on Windows 7 or earlier releases. We have not yet tested Windows 8.
- It is possible that Windows users of KiCad versions 6.0.0 to 6.0.4 may experience issues with sudden component changes using using the Edit Schematic Fields tool.
