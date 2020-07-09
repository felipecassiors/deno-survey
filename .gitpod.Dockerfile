FROM gitpod/workspace-full

## Install Deno
RUN curl -fsSL https://deno.land/x/install/install.sh | sh; \
    echo 'export DENO_INSTALL="/home/gitpod/.deno"' >> "$HOME/.bashrc"; \
    echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> "$HOME/.bashrc"

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
