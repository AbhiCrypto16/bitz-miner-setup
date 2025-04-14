## 🚀 Bitz Miner Interactive Setup

> ⚠️ **IMPORTANT: Must Read Before Starting!**
>
> After installing **Solana CLI** (during script setup), you **must reboot your VPS** to ensure it works correctly.
>
> ❗ Without rebooting, **Solana CLI will not be detected**, and the script may fail to run properly.
>
> ✅ **Steps to safely reboot VPS:**
>
> 1. If you're running the script inside a `screen` session, type `0` to **exit the script**.
> 2. Then reboot using:
>
>     ```bash
>     sudo reboot
>     ```
>
> 3. After VPS restarts, log back in via SSH and re-run the script:
>
>     ```bash
>     ./bitz-full-setup.sh
>     ```

---

Before running the `bitz-full-setup.sh` script, please ensure your system is ready by following these prerequisites and steps.

---

### ✅ Prerequisites

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

### ⚠️ Additional Notes

#### 🔐 Wallet Import – Private Key Format (Step 6)

When importing your wallet in **Step 6**, make sure your **private key is in JSON array format**, like this:

```json
[99, 132, 57, 84, ...]
```

✅ Do **NOT** paste it as a plain string or text. It must be in valid bracketed format (`[]`) for the import to work.
