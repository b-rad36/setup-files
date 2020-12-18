flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client
echo "ui.track_notifications_enabled=false" >> ~/.var/app/com.spotify.Client/config/spotify/Users/3o5e8sswj427f9aoiq0cjkh5g-user/prefs
