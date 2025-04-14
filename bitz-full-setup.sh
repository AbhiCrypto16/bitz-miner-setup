#!/bin/bash

echo "🚀 Starting Bitz Miner Full Setup from ZERO on VPS..."

# Step 1: Update system & install essentials
sudo apt update && sudo apt upgrade -y
sudo apt install curl nano build-essential screen -y

# Step 2: Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Step 3: Install Node.js 22 + Yarn
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g yarn

# Step 4: Install Solana CLI
curl --proto '=https' --tlsv1.2 -sSfL https://solana-install.solana.workers.dev | bash
echo 'export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Step 5: Set RPC URL
solana config set --url https://mainnetbeta-rpc.eclipse.xyz/

# Step 6: Restore wallet from id.json
mkdir -p ~/.config/solana
echo "⚠️ Paste your id.json private key array now, then press CTRL+D:"
cat > ~/.config/solana/id.json

# Step 7: Check wallet
solana address

# Step 8: Install Bitz CLI
cargo install bitz

# Step 9: Start mining in background
screen -S bitz -dm bash -c 'bitz collect --cores 4'

echo "✅ Bitz Miner started successfully in screen session: 'bitz'"
echo "📟 Use 'screen -r bitz' to check, 'CTRL+A+D' to detach"
