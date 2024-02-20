# Radio_Board
SilverSat Limited – https://silversat.org
![SilverSat logo](https://silversat.org/wp-content/uploads/2019/08/silversat-logo-620x266.png)

![Unassembled front radio board photograph](RB01_front.png)
Radio board front view

**SilverSat is currently transistioning the repository to KiCad 7.0. These
updated files are incompatible with KiCad 6.0.**

SilverSat's Radio Board is our custom-designed Arduino®-compatible prototype
satellite data transceiver and internet gateway for 430-450 MHz.

This repository contains the board design in KiCad 6.0 with relevant design
files and images.

# Setup
1. If you haven't already done so, download and install KiCad 6.0 from their
website, https://www.kicad.org/download/. Depending on your system and Internet
connection, than may take several hours.
2. On the top right of the repsitory's main page, click “Code” to select
download options. On all operating systems, you can download and extract a ZIP
archive to your perrfered folder. Alternatively, you can use one of the many
free Git access programs available from the Internet. Here are instructions for
a few common programs.
   * On Windows and Mac, you can download and install GitHub Desktop
   (https://desktop.github.com/) to access and manage Git repositories. See
   https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-a-repository-from-github-to-github-desktop for details.
   * There are also many command line interfaces available. For example, GitHub
    offers `gh` which can be downloaded from their repository
    (https://github.com/cli/cli). Once you install the client, navigate to your
    perferred folder and run the command given by our repository's Code tab.
   * On Unix and Linux, many software repositories offer `git` as an
   alternative to `gh`. You can download and install `git` from your package
   manager.
     - Debian-based Linux: `sudo apt install git`
     - RedHat Linux or derivatives: `sudo yum install git`
     - macOS (using [Homebrew](https://github.com/Homebrew/brew)):
     `brew install git`
   * For other programs, see their associated documentation for directions.
3. Download and install SilverSat's KiCad Library
(https://github.com/silver-sat/kicad_library). Installation instructions are
given on the library's README.md.
   - It is possible to skip this step, but some parts (such as the TCXO) may
   fail to load.¹
5. Enter the project folder and open SilverSat_Comms.kicad_pro. KiCad will show
 options to edit the schematic or PCB.

# Software
See SilverSat's Radio Software repository
(https://github.com/silver-sat/Radio_Software)

## Known Issues
- KiCad 6, required by our project, is not supported on Windows 7 or earlier
releases. We have not yet tested Windows 8.
- It is possible that Windows users of KiCad versions 6.0.0 to 6.0.4 may
experience issues with sudden component changes using using the Edit Schematic
Fields tool.
- When adding, removing, or moving components in the schematic, importing the
changes into the PCB may cause components to change places. Although they can
be moved back in place, it is easier to preserve annotations (or, if you add a
component, manually annnotate it).
- Due to the large size of this repository, it may download slowly depending on
your connection speed. On a 5 Mb/s connection, this time is approximately 13
minutes. To reduce download time, clone in headless mode `(git clone ... -d 1
...)`

# Warnings
This board was designed for the
[OshPark 4-Layer PCB Service](https://docs.oshpark.com/services/four-layer/).
Using another board type or service will require adjustments to the RF
amplifier lines and may require other appropriate compensations.

# Notes
¹ We have not yet tested whether this will work, but we presume based on past
experience that the resulting error can be ignored.
