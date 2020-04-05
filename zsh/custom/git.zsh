alias gsa="find . -maxdepth 2 -type d -name .git | sed -e \"s/.git//g\" | xargs -ti git --git-dir={}.git --work-tree={} status"
alias gfa="find . -maxdepth 2 -type d -name .git | sed -e \"s/.git//g\" | xargs -ti git --git-dir={}.git --work-tree={} fetch origin"
alias git_clean_merged_branches="git branch --merged | egrep -v \"(^\\*|master)\" | xargs -r git branch -d"
