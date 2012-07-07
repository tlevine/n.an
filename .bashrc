# In case the shell is opened as a non-login shell
. ~/.profile

# One million commands of history per session
export HISTSIZE=1000000

# Ten gigabytes of maximum history size
export HISTFILESIZE=10000000000

# Save timestamps in the history.
export HISTTIMEFORMAT="[%F %T %Z]" 

# Only do stuff if running interactively
# http://dotfiles.org/~zanko/.bashrc
[ -z "$PS1" ] && exit 0

# echo Activating extended globs
# http://mywiki.wooledge.org/glob
shopt -s extglob

# Append continuously
# http://ask.fedoraproject.org/question/18/how-to-keep-history-commands-in-sync-across
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND; history -a; history -n"
