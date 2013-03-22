
script files
========
Di seguito ci sono alcuni miei script e file di configurazione
La maggior parte degli script sono fatti per semplificarmi la vita e non digitare troppi comandi per le cose che faccio piu' spesso.

.bin/adatta :  manage fluxbox background
    - automatically resize background image to your resolution screen
    - flop image orizzontally
    - move file image
    - rename image file


.bin/ddns : Easly set DNS file /etc/resolv.conf
    - set dns using your net info
    - set dns using your gw
    - set dns using your work
    - set dns using your association
    - set dns using your provider
    - set dns using your opendns
    - if not specified set dns using google dns 8.8.8.8, 8.8.4.4



.bin/iws: scan wireless and print essid
    - if specified print also auth, if has key, quality, chan

.bin/lockme: smart locker
 	- stop player if you are listening something
    - launch xscreensaver

.bin/song :  manage the song you are listening
    - backup, delete, rename the song file
    - open a file-manager in the song directory
    - if not specified open a terminal into the song directory

conf files
========

I file di configurazione sono preferenze che, dopo anni di test, ho plasmato secondo quello che mi piace.
sono un minimalista quindi mi piace molto usare il terminale e la tastiera per quasi tutto quello che faccio.

Sicuramente non sono preferenze statiche ma cambiaranno e si miglioreranno nel tempo 
a seconda di quello che devo fare.
Di seguito una breve descrizione:

.config/gtk-3.0/settings.ini
.gtkrc-2.0
.gtkrc-2.0.mine
    - just some gtk appareance settings

.conkyrc
    - conf of my system monitoring tool

.fluxbox/init
.fluxbox/keys
.fluxbox/overlay
.fluxbox/startup
.fluxbox/styles/green_tea
	- fluxbox configuration
	- init: basic config top panel, 8 desktop, top-dx tray&clock
    -
.gnupg/gpg.conf
    - some gpg cfg

Mutt configuration files
    - shortcut, ignore, hooks, etc..
 .mutt/color
 .mutt/crypto
 .mutt/folderhooks
 .mutt/ignore
 .mutt/keys
 .mutt/mailcap
 .mutt/muttrc
 .mutt/pgp

.ncmpcpp/config
.ncmpcpp/keys
    - music config for my mpd player
    - color and shortcut

.procmailrc
    - mail filter and deliver
    - what to see and what ignore

.pythonrc
    - i love autocompletation in python

.screenrc
    - using screen everyday
    - no bell, yes visual bell
    - i like to see what window i have and what i'm using
    - scroll up with mouse works!

.sign
    - just a signature

.vimrc
    - map F5 > build file in python
    - autoindent
    - syntax works well
    - comment a line using 'cc'
    - dark background
    -
.xscreensaver
    - the screensaver i prefer


.bashrc : bash config
    - alias ls, pkg mgment, service, logall
    - delete  ^C
    - launch fortunes at startup
    - adding info to  PATH, ENV
    - improve bash history

