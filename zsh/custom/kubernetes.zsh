alias k=kubectl
alias kns=kubens
#alias kctx=kubectx

kctx () {
  local RESULT=$(find ~/.kube/ -maxdepth 1  -type f -name 'config-*' -exec basename {} \; | sort -h | fzf --height 20 --reverse)
  export KUBECONFIG=~/.kube/${RESULT}
}
