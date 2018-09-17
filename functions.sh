
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

spot_go() {
    curl -X "PUT" "https://api.spotify.com/v1/me/player/$1" -H "Accept: application/json" -H "Content-Type: application/json" -H "Authorization: Bearer $(echo $SPOT_SECRET)"
}

spot_play() {
    spot_go "play"
}

spot_pause() {
    spot_go "pause"
}

pp() {
    spot_play
}

p() {
    spot_pause
}

shf() {
    spot_go "shuffle?state=$1"
}


s() {
    shf true
}

ss() {
    shf false
}


