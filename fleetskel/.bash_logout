# Stop ssh-agent
# trap statement is set up in .bashrc
#set -x
if [ ${SSH_AGENT_PID+1} != 1 ]; then
    ssh-add -D
    ssh-agent -k > /dev/null 2>&1
    unset SSH_AGENT_PID
    unset SSH_AUTH_SOCK
fi
