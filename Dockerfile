FROM ubuntu:noble-20250127

LABEL maintainer="reuc"

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    nano \
    git \
    software-properties-common \ 
    vim-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update && apt-get install -y python3.10 python3.10-venv python3.10-dev  python3-pip\
    && rm -rf /var/lib/apt/lists/*

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]

# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Etc/GMT

# Define a working directory
WORKDIR /app


# Set a default command
CMD ["/bin/bash"]
