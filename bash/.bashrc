cowsay -f tux "I use Arch, btw"
echo -e "Hostname:\t\t"$(hostname)
echo -e "Processor Name:\t\t"$(awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//')
source ~/.local/share/omarchy/default/bash/rc
export PS1='\u@\h:\w$(git branch 2>/dev/null | grep "^*" | cut -d" " -f2 | sed "s/^/ (/;s/$/)/")\$ '

# sets VIM like command line editing
set -o vi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/home/milan/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/milan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/milan/.sdkman/bin/sdkman-init.sh"
