# How I setup a fresh Linux system

This assusmes a working Linux distro with Gnome is successfully installed.
Ideally, (parts of) the following process could be scripted, saving a lot of time doing the safe, fidgety tasks.

## The essentials
- Install gnome-tweaks. Then, set some configurations. Most importantly,
    - Set Caps lock as Ctrl
    - Set compose key as left Ctrl
    - Set dark theme
    - Set scaling to 100 %
    - Adjust font sizes to 15-16, and select nice serif fonts
- Set hotkeys in settings
    - Terminal (Ctrl+Alt+T) 
- Install
    - zsh 
    - oh-my-zsh
    - vim
- Sign in to Firefox account
    - Sign in to Git from terminal
        - Copy .vimrc, .zshrc etc. from this repo into home directory

## The non-essentials 
- Install pop shell
    - As of writing this, current pop shell version is incompatible with current gnome version. Will this be a problem when keeping up with latest gnome?
    - Alternatively: Try i3?
- Install some programs
    - insync
    - Spotify
