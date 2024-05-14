# Mach50's Hyprland + Waybar config
![img](./screenshots/1.png)
# Hey There
These dotfiles contain the configuration files of
```
- alacritty
- hyprland
- hyprpaper
- hyprlock
- hypridle
- cli-visualizer
- waybar
```
> Use the git version of Hyprland
So these applications have to be installed

Other dependecies:
- The font is `JetBrains Mono NerdFont`
- Nushell (to run the scripts)
- Pipewire with also and wireplumber should be installed (Volume control)
- brightnessctl should be installed (Backlight control)

Other needs:
- There should be a user's profile picture in the home directory named `user.png`

## NixOS Configuration
You can just follow the instructions in the Hyprland wiki for this
[here](https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/)
> Please use the flakes version of Hyprland
> `JetBrains Mono NerdFont` through your nixos config

# Closing
There is a theme configuration script in `.config/hypr/scripts/set_theme.nu` but I don't recommend it as it can mess your config files if used improperly

> Feel free to make an issue if you want to ask me anything
