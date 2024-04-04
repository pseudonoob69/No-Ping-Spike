# Windows Ping Spike Fix

## Description
This command-line utility aims to address the common issue of unstable ping responses on Windows systems. If you've experienced sudden spikes in ping latency (from 20ms to 150ms or even 999ms), this tool might help stabilize your network connection.

## Features
- **Stabilizes Ping**: The utility monitors and adjusts network settings to maintain stable ping responses.
- **Customizable Interval**: You can configure the interval at which the utility checks and adjusts network parameters.
- **Easy Setup**: Minimal setup required; just run the provided script.

## Usage
1. **Download**: Clone or download this repository.
2. **Run the First Script**: Open a Command Prompt or PowerShell window as an administrator and execute the following command:
    ```
    gaming_ON.bat
    ```
3. **Observe**: Monitor your ping responses to see if the issue improves.

## Reverting Changes
If you need to reconnect to other Wi-Fi networks or undo the changes made by the first script, follow these steps:

1. **Download the Second Script**: Clone or download this repository (if you haven't already).
2. **Run the Second Script**: Open a Command Prompt or PowerShell window as an administrator and execute the following command:
    ```
    gaming_OFF.bat
    ```
3. **Reconnect to Wi-Fi**: After running the second script, your network interface will be reset, allowing you to connect to other Wi-Fi networks.

## Prerequisites
- Windows operating system (tested on Windows 10)
- Administrative privileges (required for network adjustments)

## Troubleshooting
If you encounter any issues or need further assistance, feel free to [open an issue](https://github.com/pseudonoob69/No-Ping-Spike/issues) in this repository.

## Contributing
Contributions are welcome! If you have ideas for improvements or bug fixes, please submit a pull request.
