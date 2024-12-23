# Linux setup
Install sudo:
```
~$ su
~$ apt install sudo
```
Give user permission to sudo by adding the following to /etc/sudoers:
```
user  ALL=(ALL:ALL) ALL
```
Update & upgrade packages:
```
~$ sudo apt update && sudo apt upgrade
```
>Update only updates the package list and upgrade install newer versions

Install a display server:
```
~$ sudo apt install xorg
```
>Xorg can be started with the 'startx' command which by default runs ~/.xinitrc otherwise it will run /etc/X11/xinit/xinitrc

Install graphical applications:
```
~$ sudo apt install i3 firefox-esr feh
```
Install git & vim:
```
~$ sudo apt install vim git
```

Later reference:
-https://shapeshed.com/vim-statuslines/
-https://thevaluable.dev/practical-guide-fzf-example/
-https://omarelhawary.me/blog/faster-directory-navigation-with-fzf/
