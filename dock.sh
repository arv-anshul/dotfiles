#!/bin/sh

# When I ran this file it doesn't work.
brew install dockutil

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Finder.app"
dockutil --no-restart --add "/System/Applications/Safari.app"
dockutil --no-restart --add "/System/Applications/WhatsApp.app"
dockutil --no-restart --add "/System/Applications/Mail.app"

killall Dock

