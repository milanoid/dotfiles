cowsay -f tux "I use Arch, btw"
echo -e "User:\t\t\t"$(whoami)
echo -e "Hostname:\t\t"$(hostname)
echo -e "Processor Name:\t\t"$(awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//')

# when using dotfiles elsewhere where I have no Omarchy
if [ -f ~/.local/share/omarchy/default/bash/rc ]; then
  source ~/.local/share/omarchy/default/bash/rc
fi

# Simple function to get git branch
git_branch() {
  git branch 2>/dev/null | grep '^*' | cut -d' ' -f2
}

# Simple colored prompt with git branch
PS1='\[\033[0;32m\]\u@\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0;33m\] ($(git_branch))\[\033[0m\]\$ '

# sets VIM like command line editing
set -o vi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/home/milan/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/milan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/milan/.sdkman/bin/sdkman-init.sh"
