#!/bin/bash

# Add SSH key
eval "$(ssh-agent -s)"
ssh-add /home/arcanine/.ssh/id_rsa

# Set workspace ownership
sudo chown -R arcanine:arcanine /workspace
sudo chmod -R 775 /workspace