shell
=====

Some shell scripts to get things up and running.
As ususal you'll be on your own if things go bad.

could be invoked as `bash <(curl https://raw.githubusercontent.com/eflukx/shell/master/rbenv_node.sh)`

(_rbenv_node script doesn't work correctly without user intervention due to env reloads, sorry no time to fix._)

__Passwordless sudoing (Ubuntu):__

add `%sudo<->ALL=(ALL:ALL) NOPASSWD: ALL` to `/etc/sudoers`

__Allowing zeroconf/bonjour/mDNS via iptables:__

    iptables -A INPUT  -p udp --dport 5353 -d 224.0.0.251 -j ACCEPT
    iptables -A OUTPUT -p udp --dport 5353 -d 224.0.0.251 -j ACCEPT
    
__Prompt with git__

    PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\e[0;36m\w\e[0;33m$(__git_ps1 " [%s]")\e[0m$ '

