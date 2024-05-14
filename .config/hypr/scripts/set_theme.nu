# Hyprland colors
let window_border_gradient = "rgba(d627c8ff) rgba(0553fcff) 45deg"
let waybar_gradient = "linear-gradient(45deg, rgb(214, 39, 200), rgb(5, 83, 252))"

# Wallapapers
let wallpaper = "~/.config/hypr/assets/genshin-wallpaper-3.png"
let lockscreen_wallpaper = "~/.config/hypr/assets/blue-pattern.png"

# mako colors
let notification_bg_color = "#0553fc99"
let notification_fg_color = "#FFFFFFFF"
let notification_border_color = "#d627c8ff"


# ------------------------------------------------------------


# Set the colors for Hyprland
$"# [ COLORS ]
# Set the colors to be used in Hyprland

$border_gradient = ($window_border_gradient)
" | save -f ~/.config/hypr/hyprland/colors.conf

# Set Wallpaper
let new_hyprpaper = open ~/.config/hypr/hyprpaper.conf |
str replace -m -n '^\$wallpaper = .*$' $'$wallpaper = ($wallpaper)'
$new_hyprpaper | save -f ~/.config/hypr/hyprpaper.conf

# Set lockscreen wallpaper
let new_hyprlock = open ~/.config/hypr/hyprlock.conf |
str replace -m -n '^\$lockscreen_wallpaper = .*$' $'$lockscreen_wallpaper = ($lockscreen_wallpaper)'
$new_hyprlock | save -f ~/.config/hypr/hyprlock.conf

# Set colors for mako
let new_mako = open ~/.config/mako/config |
str replace -m -n '^background-color=.*$' $'background-color=($notification_bg_color)' |
str replace -m -n '^text-color=.*$' $'text-color=($notification_fg_color)' |
str replace -m -n '^border-color=.*$' $'border-color=($notification_border_color)'
$new_mako | save -f ~/.config/mako/config

# Set waybar colors
let new_waybar = open ~/.config/waybar/style.css |
str replace -m -n '^    background: linear-gradient.*;$' $'    background: ($waybar_gradient);'
$new_waybar | save -f ~/.config/waybar/style.css