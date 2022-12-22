# How I setup a fresh Linux system

This assusmes a working Linux distro with Gnome is successfully installed.
Ideally, (parts of) the following process could be scripted, saving a lot of time doing the safe, fidgety tasks.

## The essentials
- Install gnome-tweaks. Then, set some configurations. Most importantly,
    - Set Caps lock as Ctrl
    - Set compose key as left Ctrl
    - Set dark theme (Arc-Dark currently in fashion)
    - Set scaling to 100 % (in settings)
    - Adjust font sizes to 15-16, and select nice fonts
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
    - Alternatively: Maybe you should try i3 this time?
    - Gnome may not accept pop shell version. To disable version checking, open
        dconf-editor
    and go to
        org/gnome/shell/
    and enable 
        disable-extension-version-velidation
    - Set borders and hinting
- Install plugins for zsh
    - zsh-syntax-highlighting
    - fzf (File finder: Crtl-T to search)
    - zsh-autosuggestions
- Install some programs
    - insync
    - Spotify

- Settings:
    - Fix battery settings
    - Calendar, time and date
    - Turn of event sounds
    - Terminal colors
