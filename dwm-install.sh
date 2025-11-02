# Example shell commands (run in Linux or FreeBSD live USB) just to outline:
# 1. Download FreeBSD-15.0-RELEASE ISO from official mirrors.
# 2. Create bootable USB and install on test machine / partition.
# 3. During installation, select minimal packages (no heavy desktop if you will use dwm).
# 4. After boot:
pkg update
pkg upgrade

# 5. Install X11 and your window manager:
pkg install xorg dwm st dmenu xclip git tree neovim 

# 6. Disable unnecessary services:
sysrc ntpd_enable="NO"
sysrc sendmail_enable="NO"
# etc.

# 7. Configure your user environment (.xinitrc) to start dwm:
echo "exec dwm" > ~/.xinitrc

# 8. Start X and login into your minimal environment.
startx
