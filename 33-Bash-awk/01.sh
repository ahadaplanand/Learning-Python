# консолька за урок



# vealniycahko@ubunta:~$ awk '{print "This is a test"}'

# This is a test

# This is a test

# This is a test

# This is a test

# This is a test

# This is a test

# This is a test

# This is a test

# This is a test
# ^C
# vealniycahko@ubunta:~$ cd /home/vealniycahko/Study/Python/33
# vealniycahko@ubunta:~/Study/Python/33$ touch smth.txt
# vealniycahko@ubunta:~/Study/Python/33$ nona smth.txt 

# Команда «nona» не найдена, но может быть установлена с помощью:

# sudo apt install hugin-tools

# vealniycahko@ubunta:~/Study/Python/33$ nano smth.txt 
# vealniycahko@ubunta:~/Study/Python/33$ awk '{print "$1"}' smth.txt 
# $1
# $1
# $1
# $1
# vealniycahko@ubunta:~/Study/Python/33$ awk '{print $1}' smth.txt 
# erhee
# tree
# sgdsg
# sdg
# vealniycahko@ubunta:~/Study/Python/33$ awk '{print $2}' smth.txt 
# ewwwf
# jdfgnjdng
# sddd
# tree
# vealniycahko@ubunta:~/Study/Python/33$ awk '{print $3}' smth.txt 
# tree
# dfgdfg


# vealniycahko@ubunta:~/Study/Python/33$ awk '{print $4}' smth.txt 
# sdgs
# tree


# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ awk -F: '{print $1}' smth.txt 
# erhee ewwwf tree sdgs treee
# tree jdfgnjdng dfgdfg tree
# sgdsg sddd
# sdg tree
# vealniycahko@ubunta:~/Study/Python/33$ awk -F: '{print $1}' /etc/passwd
# root
# daemon
# bin
# sys
# sync
# games
# man
# lp
# mail
# news
# uucp
# proxy
# www-data
# backup
# list
# irc
# gnats
# nobody
# systemd-network
# systemd-resolve
# systemd-timesync
# messagebus
# syslog
# _apt
# tss
# uuidd
# tcpdump
# avahi-autoipd
# usbmux
# rtkit
# dnsmasq
# cups-pk-helper
# speech-dispatcher
# avahi
# kernoops
# saned
# nm-openvpn
# hplip
# whoopsie
# colord
# geoclue
# pulse
# gnome-initial-setup
# gdm
# sssd
# systemd-coredump
# sshd
# strongswan
# postgres
# vealniycahko
# vealniycahko@ubunta:~/Study/Python/33$ echo "THIS IS PYTHON" | awk '{$3="ABOBA"; print $0}'
# THIS IS ABOBA
# vealniycahko@ubunta:~/Study/Python/33$ namo change_name.sh

# Команда «namo» не найдена. Возможно, вы имели в виду:

#   command 'nano' from snap nano (5.7+pkg-4057)
#   command 'nemo' from deb nemo (4.4.2-2ubuntu2)
#   command 'nano' from deb nano (4.8-1ubuntu1)
#   command 'nam' from deb nam (1.15-5build1)
#   command 'nama' from deb nama (1.216-1)

# See 'snap info <snapname>' for additional versions.

# vealniycahko@ubunta:~/Study/Python/33$ nano change_name.sh
# vealniycahko@ubunta:~/Study/Python/33$ echo "THIS IS PYTHON" | awk -f change_name 
# awk: change_name: line 2: runaway string constant "ABOBA ...
# vealniycahko@ubunta:~/Study/Python/33$ nano change_name
# vealniycahko@ubunta:~/Study/Python/33$ echo "THIS IS PYTHON" | awk -f change_name 
# THIS IS ABOBA
# vealniycahko@ubunta:~/Study/Python/33$ nano sh-usr-homedir
# vealniycahko@ubunta:~/Study/Python/33$ awk -F: -f sh-usr-homedir /etc/passwd
# rootживет в /root
# daemonживет в /usr/sbin
# binживет в /bin
# sysживет в /dev
# syncживет в /bin
# gamesживет в /usr/games
# manживет в /var/cache/man
# lpживет в /var/spool/lpd
# mailживет в /var/mail
# newsживет в /var/spool/news
# uucpживет в /var/spool/uucp
# proxyживет в /bin
# www-dataживет в /var/www
# backupживет в /var/backups
# listживет в /var/list
# ircживет в /var/run/ircd
# gnatsживет в /var/lib/gnats
# nobodyживет в /nonexistent
# systemd-networkживет в /run/systemd
# systemd-resolveживет в /run/systemd
# systemd-timesyncживет в /run/systemd
# messagebusживет в /nonexistent
# syslogживет в /home/syslog
# _aptживет в /nonexistent
# tssживет в /var/lib/tpm
# uuiddживет в /run/uuidd
# tcpdumpживет в /nonexistent
# avahi-autoipdживет в /var/lib/avahi-autoipd
# usbmuxживет в /var/lib/usbmux
# rtkitживет в /proc
# dnsmasqживет в /var/lib/misc
# cups-pk-helperживет в /home/cups-pk-helper
# speech-dispatcherживет в /run/speech-dispatcher
# avahiживет в /var/run/avahi-daemon
# kernoopsживет в /
# sanedживет в /var/lib/saned
# nm-openvpnживет в /var/lib/openvpn/chroot
# hplipживет в /run/hplip
# whoopsieживет в /nonexistent
# colordживет в /var/lib/colord
# geoclueживет в /var/lib/geoclue
# pulseживет в /var/run/pulse
# gnome-initial-setupживет в /run/gnome-initial-setup/
# gdmживет в /var/lib/gdm3
# sssdживет в /var/lib/sss
# systemd-coredumpживет в /
# sshdживет в /run/sshd
# strongswanживет в /var/lib/strongswan
# postgresживет в /var/lib/postgresql
# vealniycahkoживет в /home/vealniycahko
# vealniycahko@ubunta:~/Study/Python/33$ nano sh-usr-homedir
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ awk -F: -f sh-usr-homedir /etc/passwd
# root живет в /root
# daemon живет в /usr/sbin
# bin живет в /bin
# sys живет в /dev
# sync живет в /bin
# games живет в /usr/games
# man живет в /var/cache/man
# lp живет в /var/spool/lpd
# mail живет в /var/mail
# news живет в /var/spool/news
# uucp живет в /var/spool/uucp
# proxy живет в /bin
# www-data живет в /var/www
# backup живет в /var/backups
# list живет в /var/list
# irc живет в /var/run/ircd
# gnats живет в /var/lib/gnats
# nobody живет в /nonexistent
# systemd-network живет в /run/systemd
# systemd-resolve живет в /run/systemd
# systemd-timesync живет в /run/systemd
# messagebus живет в /nonexistent
# syslog живет в /home/syslog
# _apt живет в /nonexistent
# tss живет в /var/lib/tpm
# uuidd живет в /run/uuidd
# tcpdump живет в /nonexistent
# avahi-autoipd живет в /var/lib/avahi-autoipd
# usbmux живет в /var/lib/usbmux
# rtkit живет в /proc
# dnsmasq живет в /var/lib/misc
# cups-pk-helper живет в /home/cups-pk-helper
# speech-dispatcher живет в /run/speech-dispatcher
# avahi живет в /var/run/avahi-daemon
# kernoops живет в /
# saned живет в /var/lib/saned
# nm-openvpn живет в /var/lib/openvpn/chroot
# hplip живет в /run/hplip
# whoopsie живет в /nonexistent
# colord живет в /var/lib/colord
# geoclue живет в /var/lib/geoclue
# pulse живет в /var/run/pulse
# gnome-initial-setup живет в /run/gnome-initial-setup/
# gdm живет в /var/lib/gdm3
# sssd живет в /var/lib/sss
# systemd-coredump живет в /
# sshd живет в /run/sshd
# strongswan живет в /var/lib/strongswan
# postgres живет в /var/lib/postgresql
# vealniycahko живет в /home/vealniycahko
# vealniycahko@ubunta:~/Study/Python/33$ nano sh-usr-homedir
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ awk -F: -f sh-usr-homedir /etc/passwd
# root проживает в /root
# daemon проживает в /usr/sbin
# bin проживает в /bin
# sys проживает в /dev
# sync проживает в /bin
# games проживает в /usr/games
# man проживает в /var/cache/man
# lp проживает в /var/spool/lpd
# mail проживает в /var/mail
# news проживает в /var/spool/news
# uucp проживает в /var/spool/uucp
# proxy проживает в /bin
# www-data проживает в /var/www
# backup проживает в /var/backups
# list проживает в /var/list
# irc проживает в /var/run/ircd
# gnats проживает в /var/lib/gnats
# nobody проживает в /nonexistent
# systemd-network проживает в /run/systemd
# systemd-resolve проживает в /run/systemd
# systemd-timesync проживает в /run/systemd
# messagebus проживает в /nonexistent
# syslog проживает в /home/syslog
# _apt проживает в /nonexistent
# tss проживает в /var/lib/tpm
# uuidd проживает в /run/uuidd
# tcpdump проживает в /nonexistent
# avahi-autoipd проживает в /var/lib/avahi-autoipd
# usbmux проживает в /var/lib/usbmux
# rtkit проживает в /proc
# dnsmasq проживает в /var/lib/misc
# cups-pk-helper проживает в /home/cups-pk-helper
# speech-dispatcher проживает в /run/speech-dispatcher
# avahi проживает в /var/run/avahi-daemon
# kernoops проживает в /
# saned проживает в /var/lib/saned
# nm-openvpn проживает в /var/lib/openvpn/chroot
# hplip проживает в /run/hplip
# whoopsie проживает в /nonexistent
# colord проживает в /var/lib/colord
# geoclue проживает в /var/lib/geoclue
# pulse проживает в /var/run/pulse
# gnome-initial-setup проживает в /run/gnome-initial-setup/
# gdm проживает в /var/lib/gdm3
# sssd проживает в /var/lib/sss
# systemd-coredump проживает в /
# sshd проживает в /run/sshd
# strongswan проживает в /var/lib/strongswan
# postgres проживает в /var/lib/postgresql
# vealniycahko проживает в /home/vealniycahko
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ awk 'BEGIN {print "file content:"} {print $0} END {print "end of file..."}' smth.txt 
# file content:
# erhee ewwwf tree sdgs treee
# tree jdfgnjdng dfgdfg tree
# sgdsg sddd
# sdg tree
# end of file...
# vealniycahko@ubunta:~/Study/Python/33$ nano users_info
# vealniycahko@ubunta:~/Study/Python/33$ awk -f users_info /etc/passwd
# Пользователи и их домашние директории
# Пользователь 	 Директория
# ------------ 	 -----------
# root:x:0:0:root:/root:/bin/bash
# root:x:0:0:root:/root:/bin/bash 	 
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# daemon 	 /usr/sbin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin
# bin 	 /bin
# sys:x:3:3:sys:/dev:/usr/sbin/nologin
# sys 	 /dev
# sync:x:4:65534:sync:/bin:/bin/sync
# sync 	 /bin
# games:x:5:60:games:/usr/games:/usr/sbin/nologin
# games 	 /usr/games
# man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
# man 	 /var/cache/man
# lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
# lp 	 /var/spool/lpd
# mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
# mail 	 /var/mail
# news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
# news 	 /var/spool/news
# uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
# uucp 	 /var/spool/uucp
# proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
# proxy 	 /bin
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
# www-data 	 /var/www
# backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
# backup 	 /var/backups
# list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
# list 	 /var/list
# irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
# irc 	 /var/run/ircd
# gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
# gnats 	 /var/lib/gnats
# nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
# nobody 	 /nonexistent
# systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
# systemd-network 	 /run/systemd
# systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
# systemd-resolve 	 /run/systemd
# systemd-timesync:x:102:104:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
# systemd-timesync 	 /run/systemd
# messagebus:x:103:106::/nonexistent:/usr/sbin/nologin
# messagebus 	 /nonexistent
# syslog:x:104:110::/home/syslog:/usr/sbin/nologin
# syslog 	 /home/syslog
# _apt:x:105:65534::/nonexistent:/usr/sbin/nologin
# _apt 	 /nonexistent
# tss:x:106:111:TPM software stack,,,:/var/lib/tpm:/bin/false
# tss 	 /var/lib/tpm
# uuidd:x:107:114::/run/uuidd:/usr/sbin/nologin
# uuidd 	 /run/uuidd
# tcpdump:x:108:115::/nonexistent:/usr/sbin/nologin
# tcpdump 	 /nonexistent
# avahi-autoipd:x:109:116:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/usr/sbin/nologin
# avahi-autoipd 	 /var/lib/avahi-autoipd
# usbmux:x:110:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
# usbmux 	 /var/lib/usbmux
# rtkit:x:111:117:RealtimeKit,,,:/proc:/usr/sbin/nologin
# rtkit 	 /proc
# dnsmasq:x:112:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
# dnsmasq 	 /var/lib/misc
# cups-pk-helper:x:113:120:user for cups-pk-helper service,,,:/home/cups-pk-helper:/usr/sbin/nologin
# cups-pk-helper 	 /home/cups-pk-helper
# speech-dispatcher:x:114:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
# speech-dispatcher 	 /run/speech-dispatcher
# avahi:x:115:121:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/usr/sbin/nologin
# avahi 	 /var/run/avahi-daemon
# kernoops:x:116:65534:Kernel Oops Tracking Daemon,,,:/:/usr/sbin/nologin
# kernoops 	 /
# saned:x:117:123::/var/lib/saned:/usr/sbin/nologin
# saned 	 /var/lib/saned
# nm-openvpn:x:118:124:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
# nm-openvpn 	 /var/lib/openvpn/chroot
# hplip:x:119:7:HPLIP system user,,,:/run/hplip:/bin/false
# hplip 	 /run/hplip
# whoopsie:x:120:125::/nonexistent:/bin/false
# whoopsie 	 /nonexistent
# colord:x:121:126:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
# colord 	 /var/lib/colord
# geoclue:x:122:127::/var/lib/geoclue:/usr/sbin/nologin
# geoclue 	 /var/lib/geoclue
# pulse:x:123:128:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
# pulse 	 /var/run/pulse
# gnome-initial-setup:x:124:65534::/run/gnome-initial-setup/:/bin/false
# gnome-initial-setup 	 /run/gnome-initial-setup/
# gdm:x:125:130:Gnome Display Manager:/var/lib/gdm3:/bin/false
# gdm 	 /var/lib/gdm3
# sssd:x:126:131:SSSD system user,,,:/var/lib/sss:/usr/sbin/nologin
# sssd 	 /var/lib/sss
# systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
# systemd-coredump 	 /
# sshd:x:127:65534::/run/sshd:/usr/sbin/nologin
# sshd 	 /run/sshd
# strongswan:x:128:65534::/var/lib/strongswan:/usr/sbin/nologin
# strongswan 	 /var/lib/strongswan
# postgres:x:129:136:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
# postgres 	 /var/lib/postgresql
# vealniycahko:x:1000:1000:Just Ivan:/home/vealniycahko:/bin/bash
# vealniycahko 	 /home/vealniycahko
# КОНЕЦ
# vealniycahko@ubunta:~/Study/Python/33$ nano users_info
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ nano users_info
# vealniycahko@ubunta:~/Study/Python/33$ awk -f users_info /etc/passwd
# Пользователи и их домашние директории
# Пользователь 	 Директория
# ------------ 	 -----------
# root:x:0:0:root:/root:/bin/bash
# root:x:0:0:root:/root:/bin/bash 	 
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin 	 
# bin:x:2:2:bin:/bin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin 	 
# sys:x:3:3:sys:/dev:/usr/sbin/nologin
# sys:x:3:3:sys:/dev:/usr/sbin/nologin 	 
# sync:x:4:65534:sync:/bin:/bin/sync
# sync:x:4:65534:sync:/bin:/bin/sync 	 
# games:x:5:60:games:/usr/games:/usr/sbin/nologin
# games:x:5:60:games:/usr/games:/usr/sbin/nologin 	 
# man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
# man:x:6:12:man:/var/cache/man:/usr/sbin/nologin 	 
# lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
# lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin 	 
# mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
# mail:x:8:8:mail:/var/mail:/usr/sbin/nologin 	 
# news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
# news:x:9:9:news:/var/spool/news:/usr/sbin/nologin 	 
# uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
# uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin 	 
# proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
# proxy:x:13:13:proxy:/bin:/usr/sbin/nologin 	 
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin 	 
# backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
# backup:x:34:34:backup:/var/backups:/usr/sbin/nologin 	 
# list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
# list:x:38:38:Mailing 	 
# irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
# irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin 	 
# gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
# gnats:x:41:41:Gnats 	 
# nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
# nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin 	 
# systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
# systemd-network:x:100:102:systemd 	 
# systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
# systemd-resolve:x:101:103:systemd 	 
# systemd-timesync:x:102:104:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
# systemd-timesync:x:102:104:systemd 	 
# messagebus:x:103:106::/nonexistent:/usr/sbin/nologin
# messagebus:x:103:106::/nonexistent:/usr/sbin/nologin 	 
# syslog:x:104:110::/home/syslog:/usr/sbin/nologin
# syslog:x:104:110::/home/syslog:/usr/sbin/nologin 	 
# _apt:x:105:65534::/nonexistent:/usr/sbin/nologin
# _apt:x:105:65534::/nonexistent:/usr/sbin/nologin 	 
# tss:x:106:111:TPM software stack,,,:/var/lib/tpm:/bin/false
# tss:x:106:111:TPM 	 
# uuidd:x:107:114::/run/uuidd:/usr/sbin/nologin
# uuidd:x:107:114::/run/uuidd:/usr/sbin/nologin 	 
# tcpdump:x:108:115::/nonexistent:/usr/sbin/nologin
# tcpdump:x:108:115::/nonexistent:/usr/sbin/nologin 	 
# avahi-autoipd:x:109:116:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/usr/sbin/nologin
# avahi-autoipd:x:109:116:Avahi 	 
# usbmux:x:110:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
# usbmux:x:110:46:usbmux 	 
# rtkit:x:111:117:RealtimeKit,,,:/proc:/usr/sbin/nologin
# rtkit:x:111:117:RealtimeKit,,,:/proc:/usr/sbin/nologin 	 
# dnsmasq:x:112:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
# dnsmasq:x:112:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin 	 
# cups-pk-helper:x:113:120:user for cups-pk-helper service,,,:/home/cups-pk-helper:/usr/sbin/nologin
# cups-pk-helper:x:113:120:user 	 
# speech-dispatcher:x:114:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
# speech-dispatcher:x:114:29:Speech 	 
# avahi:x:115:121:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/usr/sbin/nologin
# avahi:x:115:121:Avahi 	 
# kernoops:x:116:65534:Kernel Oops Tracking Daemon,,,:/:/usr/sbin/nologin
# kernoops:x:116:65534:Kernel 	 
# saned:x:117:123::/var/lib/saned:/usr/sbin/nologin
# saned:x:117:123::/var/lib/saned:/usr/sbin/nologin 	 
# nm-openvpn:x:118:124:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
# nm-openvpn:x:118:124:NetworkManager 	 
# hplip:x:119:7:HPLIP system user,,,:/run/hplip:/bin/false
# hplip:x:119:7:HPLIP 	 
# whoopsie:x:120:125::/nonexistent:/bin/false
# whoopsie:x:120:125::/nonexistent:/bin/false 	 
# colord:x:121:126:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
# colord:x:121:126:colord 	 
# geoclue:x:122:127::/var/lib/geoclue:/usr/sbin/nologin
# geoclue:x:122:127::/var/lib/geoclue:/usr/sbin/nologin 	 
# pulse:x:123:128:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
# pulse:x:123:128:PulseAudio 	 
# gnome-initial-setup:x:124:65534::/run/gnome-initial-setup/:/bin/false
# gnome-initial-setup:x:124:65534::/run/gnome-initial-setup/:/bin/false 	 
# gdm:x:125:130:Gnome Display Manager:/var/lib/gdm3:/bin/false
# gdm:x:125:130:Gnome 	 
# sssd:x:126:131:SSSD system user,,,:/var/lib/sss:/usr/sbin/nologin
# sssd:x:126:131:SSSD 	 
# systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
# systemd-coredump:x:999:999:systemd 	 
# sshd:x:127:65534::/run/sshd:/usr/sbin/nologin
# sshd:x:127:65534::/run/sshd:/usr/sbin/nologin 	 
# strongswan:x:128:65534::/var/lib/strongswan:/usr/sbin/nologin
# strongswan:x:128:65534::/var/lib/strongswan:/usr/sbin/nologin 	 
# postgres:x:129:136:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
# postgres:x:129:136:PostgreSQL 	 
# vealniycahko:x:1000:1000:Just Ivan:/home/vealniycahko:/bin/bash
# vealniycahko:x:1000:1000:Just 	 
# КОНЕЦ
# vealniycahko@ubunta:~/Study/Python/33$ nano users_info
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ awk -F: -f users_info /etc/passwd
# Пользователи и их домашние директории
# Пользователь 	 Директория
# ------------ 	 -----------
# root 	 /root
# daemon 	 /usr/sbin
# bin 	 /bin
# sys 	 /dev
# sync 	 /bin
# games 	 /usr/games
# man 	 /var/cache/man
# lp 	 /var/spool/lpd
# mail 	 /var/mail
# news 	 /var/spool/news
# uucp 	 /var/spool/uucp
# proxy 	 /bin
# www-data 	 /var/www
# backup 	 /var/backups
# list 	 /var/list
# irc 	 /var/run/ircd
# gnats 	 /var/lib/gnats
# nobody 	 /nonexistent
# systemd-network 	 /run/systemd
# systemd-resolve 	 /run/systemd
# systemd-timesync 	 /run/systemd
# messagebus 	 /nonexistent
# syslog 	 /home/syslog
# _apt 	 /nonexistent
# tss 	 /var/lib/tpm
# uuidd 	 /run/uuidd
# tcpdump 	 /nonexistent
# avahi-autoipd 	 /var/lib/avahi-autoipd
# usbmux 	 /var/lib/usbmux
# rtkit 	 /proc
# dnsmasq 	 /var/lib/misc
# cups-pk-helper 	 /home/cups-pk-helper
# speech-dispatcher 	 /run/speech-dispatcher
# avahi 	 /var/run/avahi-daemon
# kernoops 	 /
# saned 	 /var/lib/saned
# nm-openvpn 	 /var/lib/openvpn/chroot
# hplip 	 /run/hplip
# whoopsie 	 /nonexistent
# colord 	 /var/lib/colord
# geoclue 	 /var/lib/geoclue
# pulse 	 /var/run/pulse
# gnome-initial-setup 	 /run/gnome-initial-setup/
# gdm 	 /var/lib/gdm3
# sssd 	 /var/lib/sss
# systemd-coredump 	 /
# sshd 	 /run/sshd
# strongswan 	 /var/lib/strongswan
# postgres 	 /var/lib/postgresql
# vealniycahko 	 /home/vealniycahko
# КОНЕЦ
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 
# vealniycahko@ubunta:~/Study/Python/33$ 

