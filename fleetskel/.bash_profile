# Start ssh-agent and add ssh key
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
    trap "kill $SSH_AGENT_PID" 0 1 2 15
fi

if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi
