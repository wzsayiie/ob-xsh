export XSHROOT=$0:a:h

# system "path".
export PATH=
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/sbin

loadenv() {
    for file in $1/*.sh
    do
        source $file
    done
}

# xsh environment.
loadenv $XSHROOT/local/env
loadenv $XSHROOT/onosx/env

# xsh "path".
export PATH=$PATH:$XSHROOT/local/bin
export PATH=$PATH:$XSHROOT/onosx/bin
