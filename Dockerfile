FROM ubuntu:noble-20250127

LABEL maintainer="reuc"

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]

# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=UTC0

# Define a working directory
WORKDIR /app


# Set a default command
CMD ["/bin/bash"]