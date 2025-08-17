#!/bin/bash

# Update & upgrade system
sudo apt update -y && sudo apt upgrade -y

# Install git if not installed
sudo apt install git -y

# Remove old repo and clone fresh
cd $HOME && rm -rf X-osint && git clone https://github.com/TermuxHackz/X-osint && cd X-osint && chmod +x * && sudo bash setup.sh

# Auto-accept disclaimer
touch .disclaimer_accepted

# Launch xosint
sudo xosint

# Remove old shell config files
rm -f $HOME/.bashrc $HOME/.zshrc

# Create new .bashrc and .zshrc to auto-run xosint
echo 'cd $HOME && rm -rf X-osint && git clone https://github.com/TermuxHackz/X-osint && cd X-osint && chmod +x * && sudo bash setup.sh && touch .disclaimer_accepted && sudo xosint' > $HOME/.bashrc
echo 'cd $HOME && rm -rf X-osint && git clone https://github.com/TermuxHackz/X-osint && cd X-osint && chmod +x * && sudo bash setup.sh && touch .disclaimer_accepted && sudo xosint' > $HOME/.zshrc