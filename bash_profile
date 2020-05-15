
alias l="ls"
alias ll="ls -al"
alias docker-run='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd)'

source ${HOME}/.gvm/scripts/gvm
GOGVMPATH=${GOPATH}

set-gopath()
{
  if [ -f .gopath ]
  then
    export GOPATH=$(pwd)
  else
    export GOPATH=${GOGVMPATH}
  fi
}

cd()
{
    builtin cd "$@"
    set-gopath
}

set-gopath

if [ -z ${ENV_PATH+x} ]
then
    export ENV_PATH=${PATH}
fi

NODEROOT=${HOME}/Bin/nodejs
GOROOT=${HOME}/Bin/go
export PATH=${ENV_PATH}:${GOROOT}/bin:${NODEROOT}/bin

export TERM=screen-256color

