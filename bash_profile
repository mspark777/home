
alias l="ls"
alias ll="ls -al"
alias docker-run='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd)'

set-gopath()
{
    if [ -f .gopath ]
    then
        export GOPATH=$(pwd)
    else
        unset GOPATH
    fi
}

cd()
{
    builtin cd "$@"
    set-gopath
}

if [ -z ${ENV_PATH+x} ]
then
    export ENV_PATH=${PATH}
fi

NODEROOT=${HOME}/Bin/nodejs
GOROOT=${HOME}/Bin/go
export PATH=${ENV_PATH}:${GOROOT}/bin:${NODEROOT}/bin

set-gopath
export TERM=screen-256color

