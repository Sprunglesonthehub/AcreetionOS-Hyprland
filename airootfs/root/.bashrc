,,#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi

# Fastfetch
fastfetch --logo ~/.config/fastfetch/acreetionos.txt

# Build Android
alias build_oriole="cd /mnt/00e9d4db-14eb-4e08-9ac8-d714335eb7ac/Projects/Android/AOSP && source build/envsetup.sh && lunch aosp_oriole-trunk_staging-userdebug && echo '$TARGET_PRODUCT-$TARGET_BUILD_VARIANT' && make -j12 && make -j24 otapackage"
