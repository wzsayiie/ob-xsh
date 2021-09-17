# xsh directory path.
export XSHROOT=$0:a:h

# environment variable "path".
export PATH=$PATH:$XSHROOT/bin
export PATH=$PATH:$XSHROOT/bin_mac
export PATH=$PATH:$XSHROOT/loc_mac

# custom commands.
alias   dir="ls"
alias  move="mv"
alias  type="cat"
alias where="which"

# user local configutation.
if [ -f $XSHROOT/loc_mac/cfg ]; then
    source $XSHROOT/loc_mac/cfg
fi

# shell configuration.
export LSCOLORS=exaxaxaxaxaxaxaxaxaxax
export CLICOLOR=1
PROMPT="%F{green}%~ %# %f"
