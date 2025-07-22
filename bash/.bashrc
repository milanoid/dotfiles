cowsay -f tux "I use Arch, btw"
echo -e "Hostname:\t\t"`hostname`
echo -e "Processor Name:\t\t"`awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'`
source ~/.local/share/omarchy/default/bash/rc
export PS1='\u@\h:\w$(git branch 2>/dev/null | grep "^*" | cut -d" " -f2 | sed "s/^/ (/;s/$/)/")\$ '

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/home/milan/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
