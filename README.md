
script files
========
Following some of my script and config files
the major of that script is just for automatation, to make life simple and stop to run same cmd 2 times.


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

Config files are just my shared prefs of serveral app.
After year testing I make it as I want and I think is good to share that.

I am a minimalism person, so xterm, keyboard and shortcuts are my friends

Obviously this prefs could change time to time.
Is not static the way you like your pc, so git is also a good guy and can show me what change in the years


Files:

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

