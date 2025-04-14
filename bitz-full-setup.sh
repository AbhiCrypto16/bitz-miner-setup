#!/bin/bash

clear

echo "==============================="
echo "⚙️  Bitz Miner Interactive Setup"
echo "==============================="

while true; do
  echo "\nSelect an action:"
  echo "1) 🛠️  Update system & install essentials"
  echo "2) 🔩 Install Rust"
  echo "3) 🧶 Install Node.js 22 + Yarn"
  echo "4) 🌐 Install Solana CLI"
  echo "5) 🌍 Set Eclipse RPC URL"
  echo "6) 🔑 Import Wallet (id.json)"
  echo "7) 🧾 Check Wallet Address"
  echo "8) ⛏️  Install Bitz CLI"
  echo "9) 🚀 Start Mining (in background screen)"
  echo "10) 🖥️  Attach to Bitz screen"
  echo "11) ♻️  Restart Miner"
  echo "0) ❌ Exit"
  read -p $'\n👉 Enter your choice: ' choice

  case $choice in
    1)
      echo "\n🔧 Updating system..."
      sudo apt update && sudo apt upgrade -y
      sudo apt install curl nano build-essential screen -y
      ;;
    2)
      echo "\n🔩 Installing Rust..."
      curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
      source $HOME/.cargo/env
      ;;
    3)
      echo "\n🧶 Installing Node.js 22 + Yarn..."
      curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
      sudo apt-get install -y nodejs
      sudo npm install -g yarn
      ;;
    4)
      echo "\n🌐 Installing Solana CLI..."
      curl --proto '=https' --tlsv1.2 -sSfL https://solana-install.solana.workers.dev | bash
      echo 'export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc
      source ~/.bashrc
      echo "✅ Reboot recommended if Solana not detected"
      ;;
    5)
      echo "\n🌍 Setting Eclipse RPC URL..."
      solana config set --url https://mainnetbeta-rpc.eclipse.xyz/
      ;;
    6)
      echo "\n🔑 Paste your id.json private key array now, then press CTRL+D"
      mkdir -p ~/.config/solana
      cat > ~/.config/solana/id.json
      ;;
    7)
      echo "\n🧾 Your wallet address:"
      solana address
      ;;
    8)
      echo "\n⛏️  Installing Bitz CLI..."
      cargo install bitz
      ;;
    9)
      echo "\n🚀 Starting Miner in screen session..."
      screen -S bitz -dm bash -c 'bitz collect --cores 4'
      echo "✅ Miner started in background. Use option 10 to view."
      ;;
    10)
      echo "\n🖥️  Attaching to Bitz screen..."
      screen -r bitz
      ;;
    11)
      echo "\n♻️  Restarting Bitz miner..."
      screen -S bitz -X quit
      sleep 1
      screen -S bitz -dm bash -c 'bitz collect --cores 4'
      echo "🔁 Miner restarted in new screen session."
      ;;
    0)
      echo "👋 Exiting..."
      break
      ;;
    *)
      echo "❌ Invalid option, try again."
      ;;
  esac
done
