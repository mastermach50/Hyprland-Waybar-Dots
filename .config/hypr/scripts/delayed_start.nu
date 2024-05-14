sleep 2sec

def notify [ app ] {
    notify-send -u critical -i hyprland "Autostart Error" $"($app) failed to start properly"
}

try { noisetorch -i                  } catch { notify "noisetorch" }