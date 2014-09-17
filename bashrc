# Load alias definitions, if available
if [ -f ~/.bash_aliases ]
then
 source ~/.bash_aliases
fi

# Load git completion, if available
if [ -f ~/git-completion.bash ]
then
  source ~/git-completion.bash
fi


# set a nice prompt
export PS1="\[\e[0;34m\]\u\[\e[39m\]@\[\e[0;35m\]\h \[\e[39m\]in \[\e[0;32m\]\w\n\[\e[39m\]> "
