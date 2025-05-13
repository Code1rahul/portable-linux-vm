# Use the Ubuntu slim image as the base
FROM ubuntu:22.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install some basic utilities
RUN apt-get update && apt-get install -y \
    bash \
    vim \
    curl \
    git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /home/linux

# Expose an interactive shell by default
CMD ["/bin/bash"]
