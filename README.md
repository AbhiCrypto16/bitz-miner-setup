
## 🚀 Bitz Miner Interactive Setup

Before running the `bitz-full-setup.sh` script, please ensure your system is ready by following these prerequisites and steps.

---

### ✅ Prerequisites

0.005+ ETH on the Eclipse network
A Backpack wallet (or another Eclipse-compatible wallet

#### 👇 If You Purchased VPS from [QuickPod.io](https://quickpod.io)

QuickPod VPS may not come with `sudo` installed. In that case, run the following:

```bash
apt update && apt upgrade -y
apt install sudo -y
```

---

### 🛠️ How to Run the Script

#### **Step 1: Update the System**

Update packages and upgrade the system:

```bash
sudo apt update && sudo apt upgrade -y
```

#### **Step 2: Install Required Packages**

Install `curl` and `screen`:

```bash
sudo apt install curl screen -y
```

- `curl`: Required to download the script from GitHub.  
- `screen`: Allows running the miner in the background.

#### **Step 3: Download the Script**

Run the following to download the setup script:

```bash
curl -O https://raw.githubusercontent.com/Abhi14559/bitz-miner-setup/refs/heads/main/bitz-full-setup.sh
```

#### **Step 4: Make the Script Executable**

```bash
chmod +x bitz-full-setup.sh
```

#### **Step 5: Run the Script**

```bash
./bitz-full-setup.sh
```

This will launch the interactive setup with options for:
- System Update  
- Wallet Import  
- Mining Setup  
- And more...

---

### 🔁 Re-access the Script After VPS Reboot

To run the script again after reboot:

```bash
./bitz-full-setup.sh
```

---

### ⚠️ Important Notes

#### 🔄 After Installing Solana CLI (Step 4)

After installing Solana CLI during the script setup, **reboot your VPS** to ensure environment variables and paths are properly applied:

```bash
sudo reboot
```

Without rebooting, Solana CLI might not be detected properly.

#### 🔐 Wallet Import – Private Key Format (Step 6)

When importing your wallet in **Step 6**, make sure your **private key is in JSON array format**, like this:

```json
[99, 132, 57, 84, ...]
```

✅ Do **NOT** paste it as a plain string or text. It must be in valid bracketed format (`[]`) for the import to work.

---
