# Node Version Manager
export NVM_DIR="$HOME/.nvm"
. /usr/share/nvm/nvm.sh

# Pyenv Python version manager
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PATH:/usr/share/pyenv/bin
eval "$(pyenv init -)"
. /usr/share/pyenv/completions/pyenv.bash

# Rbenv Ruby version manager
export RBENV_ROOT="$HOME/.rbenv"
export PATH=$PATH:/usr/share/rbenv/bin
eval "$(rbenv init -)"
. /usr/share/rbenv/completions/rbenv.bash

# Rbenv Ruby version builder
export PATH=$PATH:/usr/share/ruby-build/bin

# TFenv Terraform version manager
export TFENV_ROOT="$HOME/.tfenv"
mkdir -p "$TFENV_ROOT"
export PATH=$PATH:$TFENV_ROOT/bin
ln -sf /usr/share/tfenv/* $TFENV_ROOT
eval "$(tfenv init -)"


# PKenv Packer version manager
export PKENV_ROOT="$HOME/.pkenv"
mkdir -p "$PKENV_ROOT"
export PATH=$PATH:$PKENV_ROOT/bin
ln -sf /usr/share/pkenv/* $PKENV_ROOT

# SDKMan version manager
/usr/share/sdkman > /dev/null
chmod +x $HOME/.sdkman/bin/sdkman-init.sh
$HOME/.sdkman/bin/sdkman-init.sh
