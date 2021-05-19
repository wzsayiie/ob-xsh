## introduction

a simple shell auxiliary tool.

## files

the commands directories.
*xsh* will add the directories to environment varibale `PATH`.
**bin_mac/** is valid on *mac os*, and **bin_win/** is for *windows*.

- bin/
- bin_mac/
- bin_win/

the user commands directories.
their function is same as **bin_mac/** and **bin_win/**,
but they are not added to the repository.

- loc_mac/
- loc_win/

the user local configuration. *xsh* will load then when launching.

- loc_mac/cfg
- loc_win/cfg.bat

the configuration files for *windows*.

- xsh.bat

the configuration files for *mac os*.

- install
- zshrc

## installation

on *mac os*, execute the script **install**,
it will reset **~/.zshrc**.

on *windows*, to create a shortcut reference *cmd*,
and pass **xsh.bat** as its argument, like `cmd.exe /k xsh.bat`.
