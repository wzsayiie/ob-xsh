## introduction

a simple shell auxiliary tool.

## files

cross-platform commands. _xsh_ will add the directory to environment varibale `PATH`:

- bin/

the configuration. when _xsh_ starts, it will load the content under **env/**,
and add **bin/** to environment variable `PATH`.
**onosx/** is valid on _mac os_, and **onwin32** is for _windows_.

- onosx/bin/
- onosx/env/
- onwin32/bin/
- onwin32/env/

the user local configuration. its function is same as **onosx/** and **win32/**,
but it isn't added to the repository:

- local/bin/
- local/env/

executable file for _windows_:

- xsh.bat

installation files for _mac os_,
the script **install** will reset **~/.zshrc**.

- install
- zshrc
