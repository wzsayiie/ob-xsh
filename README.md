## introduction

a simple shell auxiliary tool.

## files

cross-platform commands.
*xsh* will add the directory to environment varibale `PATH`:

- bin/

platform-related commands and environments.
when *xsh* starts, it will load the content under **xx/env/**,
and add **xx/bin/** to environment variable `PATH`.
**onosx/** is valid on *mac os*, and **onwin32/** is for *windows*.

- onosx/bin/
- onosx/env/
- onwin32/bin/
- onwin32/env/

the user local configuration.
its function is same as **onosx/** and **win32/**,
but it isn't added to the repository.

- local/bin/
- local/env/

executable file for *windows*.

- xsh.bat

installation files for *mac os*,
the script **install** will reset **~/.zshrc**.

- install
- zshrc
