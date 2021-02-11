#! /bin/sh
#========================================#
#     LoolLinux wal recycle script.     #
#========================================#

# Cycle wal background image and colorscheme.
wal -i "/usr/share/backgrounds/looplinux-wallpaper-v2"

# Restart polybar to match new colorscheme.
pkill polybar
polybar --reload mainbar-bspwm -c ~/.config/polybar/config_top_border &

# Refresh bspwm's colorscheme.
source "$HOME/.cache/wal/colors.sh"
bspc config normal_border_color $color0
bspc config focused_border_color $color1
bspc config active_border_color $color1
bspc config presel_feedback_color $color1