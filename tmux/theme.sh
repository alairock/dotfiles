#### COLOUR

tm_color_active=colour41
tm_color_inactive=colour241
tm_color_feature=colour13
tm_color_music=colour164
tm_active_border_color=colour198

# separators
tm_separator_left_bold="◀"
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


# default statusbar colors
# set-option -g status-bg colour0
set-option -g status-fg $tm_color_active
set-option -g status-bg default

# default window title colors
set-window-option -g window-status-current-style bg=colour0,fg=$tm_color_inactive,dim
setw -g window-status-format " #I #W  "

# active window title colors
set-window-option -g window-status-style bg=green,fg=black,reverse
set-window-option -g  window-status-current-format "#[bold]#I #W "

set-option -g allow-rename off

# pane border
set-option -g pane-border-style fg=$tm_color_inactive
set-option -g pane-active-border-style fg=$tm_active_border_color

# message text
set-option -g message-style bg=black,fg=$tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

tm_tunes="#[fg=$tm_color_music]#(~/.dotfiles/applescripts/tunes.scpt)"
tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=$tm_color_inactive] %l:%M %p %b %d"
tm_host="#[fg=$tm_color_feature,bold]alairock"
tm_session_name="#[fg=$tm_color_feature,bold]#S"

set -g status-left $tm_session_name' '
set -g status-right $tm_tunes' '$tm_date' '$tm_host
