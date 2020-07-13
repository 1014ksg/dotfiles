#! /bin/sh
# for start docker
alias docker='cd ~/shunmo_files/docker'
alias roshost='cd ~/shunmo_files/docker/ros_host && ./run_ytpc2019d.sh'
alias gazebo='cd ~/shunmo_files/docker/gazebo_hsr && ./run_ytpc2019d.sh'
alias hsr='cd ~/shunmo_files/docker/hsr && ./run_ytpc2019d.sh'

# for git
alias gp='git pull origin master'
alias gs='git status'
function gc() {
    command git add -A && git commit -m "$1" && git push origin master
}

# for terminal
function cd() {
    command cd $1 && ls
}

# for ssh
alias dlbox='ssh -Y -C printeps2017a@192.168.1.15'