Bitz Miner Interactive Setup
Prerequisites
Before running the bitz-full-setup.sh script, make sure your system is ready by following these steps:

Update your system: Run the following commands to update your system to the latest version:

bash
Copy
Edit
sudo apt update && sudo apt upgrade -y
Install essential packages: Ensure you have curl, screen, and sudo installed. You can install them using the following command:

bash
Copy
Edit
sudo apt install curl screen sudo -y
curl: Required to download the script from GitHub.

screen: Needed to run the miner in the background within a screen session.

sudo: Ensures you can run commands with superuser privileges.

How to Run the Script
Step 1: Download the Script
To download the bitz-full-setup.sh script, SSH into your VPS and run this command:

bash
Copy
Edit
curl -O https://raw.githubusercontent.com/Abhi14559/bitz-miner-setup/refs/heads/main/bitz-full-setup.sh
Step 2: Make the Script Executable
Once the script is downloaded, make it executable with the following command:

bash
Copy
Edit
chmod +x bitz-full-setup.sh
Step 3: Run the Script
Now you can run the script:

bash
Copy
Edit
./bitz-full-setup.sh
This will start the interactive setup where you can choose the required actions (system update, wallet import, mining setup, etc.).



How to Re-access the Script After VPS Reboot

Run the script again: Simply execute the script by typing:

bash
Copy
Edit
./bitz-full-setup.sh
