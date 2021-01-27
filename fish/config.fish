# Aliases
alias v='vim'
alias nv='nvim'
alias kbn='kubectl -n nicolas-correa'
alias gst='git status'
alias grepc='grep -rin'

# Env
set -x GOBIN /home/nicolas/go/bin
set -x SNAPBIN /var/lib/snapd/snap/bin


# Update PATH
set -a PATH $GOBIN
set -a PATH $SNAPBIN

# Run ssh-agent
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

xrandr --output HDMI1 --auto --left-of eDP1 > /dev/null
