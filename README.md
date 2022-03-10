# Tmux Time Tracker

Tmux Time Tracker is a simple tmux plugin to track how much time you have been working for.

It is not a pomodoro timer.

The displayed format is `00:00:00`.

## Installation
### With TPM

Add the following line to your tmux configuration file:

`set -g @plugin 'PierrickF/tmux_time_tracker'`

Add `#{timer}` to either your status-right or status-left area
in your tmux configuration file:

`set -g status-right "#{timer}"`

## Usage

The timer starts when tmux is opened.

The timer pauses when tmux is closed.

The timer can be reset with the `prefix + R` keybind combination.
