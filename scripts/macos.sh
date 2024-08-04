#! /bin/zsh

SCREENSHOTS_FOLDER="${HOME}/Pictures/Screenshots"

osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

###############################################################################
# General Settings                                                            #
###############################################################################

# Sound: Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "
sudo nvram StartupMute=%01

# Keyborad: use TAB KEY on keyboard navigation to move focus between controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# MenuBar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Trackpad: swipe between pages with three fingers
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
defaults write NSGlobalDomain com.apple.trackpad.threeFingerHorizSwipeGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1
defaults write NSGlobalDomain com.apple.trackpad.threeFingerTapGesture -int 2

# Sound: Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Screenshots: Save screenshots to the ~/Screenshots folder
mkdir -p "${SCREENSHOTS_FOLDER}"
defaults write com.apple.screencapture location -string "${SCREENSHOTS_FOLDER}"

# Display: Disable Font Smoothing
defaults write -g AppleFontSmoothing -int 0

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finder: Always open everything in Finder's list view.
# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder: Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder: Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict General -bool true OpenWith -bool true Privileges -bool true

###############################################################################
# Dock                                                                        #
###############################################################################

# Dock: Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Dock: Reduces automatically hide delay time
defaults write com.apple.dock autohide-delay -float 0.1

# Dock: Remove dock animation auto-hide delay
defaults write com.apple.dock autohide-time-modifier -float 0.25

# Dock: Don't show recently used applications in the Dock
defaults write com.Apple.Dock show-recents -bool false

# Dock: Place the on the Right Side of the Screen
defaults write com.apple.dock orientation -string "right"

# Dock: Enables the dock magnification
defaults write com.apple.dock magnification -bool true

# Dock: Dock magnification size
defaults write com.apple.dock largesize -int 128

# Dock: App minimze to its icons
defaults write com.apple.dock minimize-to-application -int 1

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Dock" "Finder" "Safari" "SystemUIServer"; do
  killall "${app}" &> /dev/null
done
