FROM mcr.microsoft.com/devcontainers/rust:bookworm

# Set your desired username
ARG NEW_USER=arcanine

# Create the user with sudo privileges
RUN useradd -m -s /bin/bash $NEW_USER && \
    echo "$NEW_USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Ensure workspace permissions
RUN mkdir -p /workspace && chown -R $NEW_USER:$NEW_USER /workspace