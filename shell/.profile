# export QT_QPA_PLATFORMTHEME="qt5ct"
# export QT_QPA_PLATFORMTHEME="gtk2"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export EDITOR=/usr/bin/vim

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi
