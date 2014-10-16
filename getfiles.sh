#!/bin/bash
#Author: samba
#Description: just get the dotfiles and remove sinsible datas
MYDIR=$(dirname $0) #type here your local dotfile repo
LISTFILE="
.bashrc
.procmailrc
.screenrc
.vimrc
.conkyrc
.Xdefaults
.xscreensaver
.pythonrc

.gnupg/gpg.conf

.gtkrc-2.0
.gtkrc-2.0.mine
.config/gtk-3.0/settings.ini

.ncmpcpp/config
.ncmpcpp/keys

.fluxbox/styles/green_tea
.fluxbox/keys
.fluxbox/init
.fluxbox/startup
.fluxbox/overlay

.bin/mailcheck
.bin/lockme
.bin/get_wifi
.bin/iws
.bin/ddns
.bin/adatta
.bin/song
.bin/startirc

.sign
.mutt/pgp
.mutt/mailcap
.mutt/keys
.mutt/muttrc
.mutt/color
.mutt/folderhooks
.mutt/ignore
.mutt/crypto

"

for i in $LISTFILE;do
    PATHFILE=${HOME}/$i
	[ ! -f $PATHFILE ] && echo "E:404 - skip $i" && continue
	cp -v $PATHFILE ${MYDIR}/$i
done

exit 0
