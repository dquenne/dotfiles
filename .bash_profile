# aliases

alias agit='ag --ignore={"*tests*","*.test.*"}'
alias gcom='git fetch origin && git checkout origin/main || git checkout origin/master'
alias gdc='git diff --cached'
alias gfo='git fetch origin'
alias gfu='git fetch upstream'
alias gom='git fetch origin && git checkout origin/main || git checkout origin/master'
alias gpso='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gum='git fetch upstream && git checkout upstream/main || git checkout upstream/master'

# vi mode

bindkey -v


# X11 access from WSL 1

if [ -n $WSL_DISTRO_NAME ]
then
export DISPLAY=localhost:0.0
fi

amplify_env () {
  if git rev-parse --git-dir >/dev/null 2>&1; then
    git_root=$(git rev-parse --show-toplevel)
    if [ -d "${git_root}/www" ]; then
      envname="$(cat "${git_root}/www/amplify/.config/local-env-info.json" | jq -r '.envName')"
      echo "${envname}"
    else
      echo "na"
    fi
  else
    echo "na"
  fi
}

# source $HOME/.asdf/asdf.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
