# xsh directory path.
export XSHROOT=$0:a:h

# environment variable "path".
export PATH=
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/sbin

export PATH=$PATH:$XSHROOT/bin
export PATH=$PATH:$XSHROOT/bin_mac
export PATH=$PATH:$XSHROOT/loc_mac

# custom commands.
alias  wd="cd"
alias  mk="touch"
alias mkd="mkdir -p"

# user local configutation.
if [ -f $XSHROOT/loc_mac/cfg ]; then
    source $XSHROOT/loc_mac/cfg
fi

# shell configuration.
export LSCOLORS=exaxaxaxaxaxaxaxaxaxax
export CLICOLOR=1
PROMPT="%F{green}%~ %# %f"
