#!/bin/sh

# Updating packages
echo "Updating packages..."
pkg update -y

# Installing required packages
echo "Installing required packages: rust, git, binutils, ndk-sysroot..."
pkg install -y rust git binutils ndk-sysroot

# Cloning Libreddit repository
echo "Cloning Libreddit repository..."
git clone https://github.com/spikecodes/libreddit.git

# Building and running Libreddit
echo "Building and running Libreddit..."
cd libreddit
cargo build --release
./target/release/libreddit &

