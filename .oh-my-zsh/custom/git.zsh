function prune_br() {
    git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
}