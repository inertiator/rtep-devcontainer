#!/bin/bash

# Fix SSH key permissions
chmod 600 /home/arcanine/.ssh/id_rsa
chmod 644 /home/arcanine/.ssh/id_rsa.pub

# Add SSH key
eval "$(ssh-agent -s)"
ssh-add /home/arcanine/.ssh/id_rsa

# Set workspace ownership
sudo chown -R arcanine:arcanine /workspace
sudo chmod -R 775 /workspace &&