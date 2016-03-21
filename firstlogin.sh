#!/bin/sh
setosdefaults()
{
    #This writes mouse prefs, finder prefs, turns off App store autoupdate.
defaults write "/Users/${USER}/Library/Preferences/com.apple.driver.AppleHIDMouse" Button2 -int 2
defaults write "/Users/${USER}/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.mouse" MouseButtonMode -string TwoButton
defaults write "/Users/${USER}/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadRightClick -int 1
defaults write "/Users/${USER}/Library/Preferences/com.apple.finder" ShowExternalHardDrivesOnDesktop -bool TRUE
defaults write "/Users/${USER}/Library/Preferences/com.apple.finder" ShowMountedServersOnDesktop -bool TRUE
defaults write "/Users/${USER}/Library/Preferences/com.apple.finder" ShowHardDrivesOnDesktop -bool TRUE
defaults write "/Users/${USER}/Library/Preferences/com.apple.finder" ShowRemovableMediaOnDesktop -bool TRUE
defaults write "/Users/${USER}/Library/Preferences/com.apple.SoftwareUpdate" AutomaticCheckEnabled -bool FALSE
defaults write "/Users/${USER}/Library/Preferences/com.apple.commerce" AutoUpdate -bool FALSE
defaults write "/Users/${USER}/Library/Preferences/com.apple.commerce" AutoUpdateRestartRequired -bool FALSE
}
DisableOffice2016FirstRun()
{

   # This function will disable the first run dialog windows for all Office 2016 apps.
   # It will also set the desired diagnostic info settings for Office application.

   /usr/bin/defaults write /Library/Preferences/com.microsoft."$app" kSubUIAppCompletedFirstRunSetup1507 -bool true
   /usr/bin/defaults write /Library/Preferences/com.microsoft."$app" SendAllTelemetryEnabled -bool "$submit_diagnostic_data_to_microsoft"

   # Outlook and OneNote require one additional first run setting to be disabled

   if [[ $app == "Outlook" ]] || [[ $app == "onenote.mac" ]]; then

     /usr/bin/defaults write /Library/Preferences/com.microsoft."$app" FirstRunExperienceCompletedO15 -bool true

   fi

}

Office2016Apps()
{
if [[ -e "/Applications/Microsoft Excel.app" ]]; then
app=Excel

DisableOffice2016FirstRun

fi

if [[ -e "/Applications/Microsoft OneNote.app" ]]; then
app=onenote.mac

DisableOffice2016FirstRun

fi

if [[ -e "/Applications/Microsoft Outlook.app" ]]; then
app=Outlook

DisableOffice2016FirstRun

fi

if [[ -e "/Applications/Microsoft PowerPoint.app" ]]; then
app=Powerpoint

DisableOffice2016FirstRun

fi

if [[ -e "/Applications/Microsoft Word.app" ]]; then
app=Word

DisableOffice2016FirstRun

fi
}

setosdefaults
Office2016Apps