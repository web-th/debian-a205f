#!/bin/bash
set -e

if [ -f /etc/firstboot-done ]; then
    exit 0
fi

mkdir -p /var/log
touch /var/log/firstboot.log

echo "Debian first boot started" >> /var/log/firstboot.log

systemctl enable ssh.service || true
systemctl enable NetworkManager.service || true

touch /etc/firstboot-done

echo "Debian first boot completed" >> /var/log/firstboot.log
exit 0
