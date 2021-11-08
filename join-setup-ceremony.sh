#!/bin/bash

cd
sudo apt-get install libssl-dev pkg-config libclang-dev -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#gelen pencerede 1'e bas

#kurulum sonrası terminali yeniden başlat ya da yeni terminal aç

git clone https://github.com/aleoHQ/aleo-setup
cd ~/aleo-setup && cargo clean && cargo build --release
cargo run --release --bin setup1-contributor -- generate --keys-path keys.json
#şifre tanımla

#bundan sonraki işlemleri mutlaka yeni bir screen'de yapın. !!!!

screen -S aleo-c
cargo run --release --bin setup1-contributor -- contribute --api-url https://inner-ceremony.aleo.org --keys-path keys.json
#tanımladıgın şifreyi gir
#sizi sıraya alacak kaçıncı sırada oldugunuz gözükecek


#sıra bittiğinde eth adresinizi gireceksiniz ve belli bir süre sonra nft o eth adresine gelecek

