HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
plugins=(asdf git git-prompt vagrant docker minikube)

if [ -d $HOME/.local/bin ]; then
  export PATH=$HOME/.local/bin:$PATH
fi

export EDITOR=vim
