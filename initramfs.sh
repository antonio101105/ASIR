#!/bin/sh
#
# === EXCEPTION ===
# Setting up initramfs-tools (0.130) ...
# update-initramfs: deferring update (trigger activated)
# cp: cannot create regular file '/lib/live/mount/medium/live/vmlinuz.new': No such file or directory
# dpkg: error processing package initramfs-tools (--configure):
#  installed initramfs-tools package post-installation script subprocess returned error exit status 1
#

apt remove live-tools
apt install --reinstall initramfs-tools
apt install -f
apt update
