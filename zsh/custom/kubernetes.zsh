alias k=kubectl
alias kns=kubens
#alias kctx=kubectx

kctx () {
  local filter=$1
  local RESULT=$(find \
    ~/.config/k3d/ \
    ~/.kube/ \
    -maxdepth 2 \
    -type f \
    -name '*config.yaml' \
    | sort --human-numeric-sort \
    | fzf --height 20 --reverse --exact --query "$filter")
  export KUBECONFIG=${RESULT}
}
