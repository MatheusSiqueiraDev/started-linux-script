## Script Description

This is a shell script (bash) designed to automate the initial setup of a server environment. It performs various operations including configuring environment variables from a `.env` file, checking for the existence of commands in the system, determining the current user, and selecting the appropriate method to execute commands with elevated privileges.

### Key Features:

- **Environment Variable Configuration**: The script checks for the existence of a `.env` file in the current directory and configures the environment variables listed in it.
  
- **Checking for Existing Commands**: A function is defined to check if a specific command is available in the system.
  
- **Privileged Execution Method Selection**: The script determines if it's running as `root` and selects the best approach to execute commands with privileges, using `sudo` or `su` as needed.

- **Package Repository Update (apt)**: Updates the system's package repository using the `apt update` command.

- **Package Installation and Script Execution**: Executes installation scripts to configure and install Docker, Bind9, and Netplan, as well as other necessary packages or configurations on the Linux server.

- **Cleanup of Unused Packages**: Executes the `autoremove` command to remove unused packages from the system, helping to keep the environment clean and organized.

### Usage:

1. Clone this repository to your local machine.
2. Run the `setup.sh` script in the terminal.
3. Follow the instructions presented during the script execution, if necessary.

### Notes:

- Be sure to review and understand the installation scripts called by this main script before running it, to avoid compatibility issues or conflicts with existing configurations.
