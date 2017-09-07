
cd() {
    venvactifile=./venv/bin/activate
    builtin cd "$@";  
    if [ -e "$venvactifile" ]; then
        source $venvactifile
        export PYTHONPATH=$(pwd)
        echo "IN LIKE FLYNN"
    else
        if type deactivate >/dev/null 2>&1
        then
            deactivate
            echo "Leaving Environment"
        fi
    fi
}


dcfunc() {
    export MY_LOCAL_IP=$(myIP)
    docker-compose "$@"
}
alias dc=dcfunc

myIP() {
    ifconfig en0 inet | grep inet | awk {'print $2'}
}

