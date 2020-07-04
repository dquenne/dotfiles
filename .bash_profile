# aliases

alias dar="deno --allow-read"


# vi mode

bindkey -v


# X11 access from WSL 1

if [ -n $WSL_DISTRO_NAME ]
then
export DISPLAY=localhost:0.0
fi


# deno

export DENO_INSTALL="/home/dylan/.local"
export PATH="$DENO_INSTALL/bin:$PATH"
export DENO_PROTOC="/usr/lib/node_modules/protoc-gen-ts"
export PATH="$DENO_PROTOC/bin:$PATH"


# AssemblyScript

export AS_PATH="/home/dylan/code/assemblyscript"
export PATH="$AS_PATH/bin:$PATH"


# emsdk

source ~/code/emsdk/emsdk_env.sh


# cvkit

export CVKIT_PATH="/home/dylan/code/cvkit"
export PATH="$CVKIT_PATH/tools:$PATH"
