## introduction

a simple shell auxiliary tool.

## files

cross-platform commands.
*xsh* will add the directory to environment varibale `PATH`:

- bin/

platform-related commands and environments.
when *xsh* starts, it will load the content under **xx/env/**,
and add **xx/bin/** to environment variable `PATH`.
**macos/** is valid on *mac os*, and **windows/** is for *windows*.

- macos/bin/
- macos/env/
- windows/bin/
- windows/env/

the user local configuration.
its function is same as **macos/** and **windows/**,
but it isn't added to the repository.

- local/bin/
- local/env/

the brief about commands.

- CMDS.md

installation files for *mac os*.
the script **install** will reset **~/.zshrc**.

- install
- zshrc

installation files for *windows*.
**install_xx.bat** will compile **xsh.c** to **xsh.exe**.

- install_cl.bat
- install_clang.bat
- install_gcc.bat
- xsh.bat
- xsh.c
