# USB System Inspection Toolkit

## Overview

This project is a portable, script-based toolkit designed for rapid system assessment. It automates the execution of industry-standard security and maintenance tools directly from a USB drive, requiring no installation on the host machine.

It is designed for IT professionals to quickly:

- Identify network vulnerabilities (Nmap).
- Remove pre-installed bloatware and adware (AdwCleaner).
- Perform deep-clean uninstalls (Bulk Crap Uninstaller).
- Analyze network traffic (Wireshark).

## Structure

The toolkit relies on a `inspect_system.bat` launcher script that provides a CLI menu for the operator.

**Note:** For licensing and bandwidth reasons, the binary tools (Nmap, AdwCleaner, etc.) are **not** included in this repository. This repo contains the automation logic only.

## Setup Instructions

To build this USB tool yourself:

1. Clone this repository.
2. Create a folder named `Tools` in the root directory.
3. Download the **Portable** versions of the following software and place them in the `Tools` folder:
   - **AdwCleaner:** Rename to `adwcleaner.exe`
   - **Bulk Crap Uninstaller:** Extract to `Tools\BCU\`
   - **Nmap:** Extract binaries to `Tools\Nmap\`
   - **Wireshark:** Place `WiresharkPortable.exe` in `Tools\`
4. Run `inspect_system.bat`.

## Usage

- **Plug & Play:** Insert the USB drive into the target machine.
- **Run as Admin:** Right-click `inspect_system.bat` and select "Run as Administrator".
- **Select Option:** Choose the desired scanning or cleaning operation from the menu.

## License

MIT License
