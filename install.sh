7z x config.zip
#Creating directories
mkdir -p {/home/$USER/.local/bin,/home/$USER/.config,/home/$USER/.local/share/fonts}
#copy configs
# .config
cp  ~/installation/dots/config/* ~/.config --recursive
sudo chmod +wrx ~/.config/polybar/launch.sh
# home
cp  ~/installation/dots/home/.* ~/ --recursive
# fonts
cp ~/installation/dots/fonts/* ~/.local/share/fonts  --recursive
#scripts
cp ~/installation/dots/scripts/* ~/.local/bin  --recursive
sudo chmod +wrx ~/.local/bin/* --recursive
# Changing ownership
sudo chown $USER /home/* --recursive


