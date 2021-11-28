#!/bin/bash


#installation

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cd ~/
git clone https://github.com/AleoHQ/snarkOS.git --depth 1
cd ~/snarkOS
./testnet2_ubuntu.sh

#get miner address

cd ~/snarkOS
snarkos experimental new_account
cargo run --release -- experimental new_account


#run miner

./run-miner.sh