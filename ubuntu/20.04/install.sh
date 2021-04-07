#!/bin/bash
set -euo pipefail

# Install build dependencies and utils
apt-get install -y \
        build-essential \
        curl \
        git \
        jq \
        libbz2-dev \
        libffi-dev \
        liblzma-dev \
        libncurses5-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxmlsec1-dev \
        llvm \
        tk-dev \
        unzip \
        vim \
        wget \
        xz-utils \
        zip \
        zlib1g-dev

# Node version manager
git clone --branch v0.38.0 https://github.com/nvm-sh/nvm.git /usr/share/nvm

# Python version manager
git clone https://github.com/pyenv/pyenv /usr/share/pyenv
cd /usr/share/pyenv && src/configure && make -C src

# Ruby version manager and builder
git clone https://github.com/rbenv/rbenv /usr/share/rbenv
git clone https://github.com/rbenv/ruby-build.git /usr/share/ruby-build
chmod +x /usr/share/ruby-build/bin/*

# Terraform version manager
git clone https://github.com/tfutils/tfenv.git /usr/share/tfenv

# Packer version manager
git clone https://github.com/iamhsa/pkenv.git /usr/share/pkenv

# SDKman for Java/JVM tooling version management
wget -O /usr/share/sdkman "https://get.sdkman.io"
chmod +x /usr/share/sdkman

