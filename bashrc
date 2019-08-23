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

# Kubernetes prompt funktion
prompt_k8s(){
  k8s_current_context=$(kubectl config current-context 2> /dev/null)
  if [[ $? -eq 0 ]] ; then echo -e "(k8s:${k8s_current_context})"; fi
}

# set a nice prompt
export PS1="\[\e[0;34m\]\u\[\e[39m\]@\[\e[0;35m\]\h \[\e[39m\]\[\e[1;31m\]\$(prompt_k8s)\[\e[0m\] in \[\e[0;32m\]\w\n\[\e[39m\]> "
export EDITOR=vim
export LDAPTLS_REQCERT=never
HISTCONTROL=ignorespace

complete -C /usr/local/bin/terraform terraform
