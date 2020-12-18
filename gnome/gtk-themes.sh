# Nordic - https://www.opendesktop.org/s/Gnome/p/1267246/
mkdir ~/.themes
wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDc1NDM1MTUiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjM4ZGNhNTc3NzQ4ODlkMTQ5YmQ1MjMyNzM2OWRkNmRiMjBmYjEyNzYwNDQ5ODA5OTNmNzE0MDk0ZmM0OWU1MmE2NzQ5ODdjY2UwMGFkMWEzYmI1Nzc0OTE1MDE4ODU2MGNiNmJkN2Y5ZmRkMmVkYjg4MjAwMmY5MTJjN2QwNWJjIiwidCI6MTYwODI1NTI4Nywic3RmcCI6IjZmYWI2ODA2ZDJlNTVhZWExZjBlOTNhMGY2MDg0ZTE1Iiwic3RpcCI6IjE3Mi4xMDMuMTc3LjM4In0.fYHX47-uVCEBMUiNtoNvpzq14hk34zSo5xH5mXTi5dM/Nordic-darker.tar.xz -O /tmp/Nordic-darker.tar.xz

wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDU2NDIxNjMiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImFmOTBiYWU0NGQyMGY0ODNhNjMxNjkyN2RhNzdiOWJlODQ3MWMwYjYzOWQzMjE4NzAxM2I2ZDFiYmUxMjAyOGZjODg5YWM1ZDNiYzViOWNkYmQxNWQ5MjdmOTBhNWZkNDc3ZGJiYzIwZWQzMzUxNTYxZDZkOWE0NGE1NjI5MDQyIiwidCI6MTYwNjQ0MjIyMiwic3RmcCI6ImU1YTg0YmZiMWMzMDM1MjkwZTVhNGUwYzNiNjlkOGQ2Iiwic3RpcCI6IjE3Mi4xMDMuMTc3LjM4In0.ECZvLj1Vkih4P8KVG9EoohH6urGdkNJAqrRcx1rUb_U/Nordic-darker.tar.xz -O /tmp/Nordic-darker.tar.xz

tar -xvf Nordic-darker.tar.xz -C ~/.themes

gsettings set org.gnome.desktop.interface gtk-theme "Nordic-darker"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic-darker"

# wallpaper
wget https://raw.githubusercontent.com/siduck76/fluxbox-dotfiles/main/wallpaper.jpg -O ~/Pictures/wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file:////home/b-rad/Pictures/wallpaper.jpg
