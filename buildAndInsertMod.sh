#!/bin/bash
# Richard Stanley
# Also, I used https://github.com/engineer-man/youtube/tree/master/062
# as the kernel code, as an example.
rm rickroll;
make clean;
make;
insmod rickroll.ko;
# On the host system,
# cat /var/log/kern.log # RN, ONLY WORKS if your HOST IS LINUX
# the rickroll kernel ID should be at the bottom of the log file.
# we will use "508" - that's what my LINUX HOST is reporting.
mknod rickroll c 508 0;
# if you want to remove the mod:
# rmmod rickroll
# lsmod | grep "rickroll" #should not report anything.

# To see the device working:
# cat ./rickroll
# Ctrl + C (to stop)