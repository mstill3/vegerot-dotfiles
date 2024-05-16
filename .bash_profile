# POSIX stuff
source ~/.profile

# completions
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# prompt
PROMPT_DIRTRIM=3

PROMPT_WHOAMI='\u@\h'
PROMPT_WHEREAMI='📁\w/'
PROMPT_BRANCH='$(git branch --show-current >/dev/null 2>&1 && printf "🌿$(git branch --show-current) "|| printf "")'
PROMPT_LAST_STATUS='$([ $? != 0 ] && printf "❌ " || printf "")'
PROMPT_START='$ '
PS1="${PROMPT_LAST_STATUS}$PROMPT_WHOAMI: $PROMPT_WHEREAMI $PROMPT_BRANCH\n$PROMPT_START"
PRE_PROMPT='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\]'
#PS1="$PRE_PROMPT $PS1"

# history
export HISTSIZE=42069
export HISTFILESIZE=69420
shopt -s histappend
shopt -s histverify
shopt -s lithist
export PROMPT_COMMAND="history -a"

