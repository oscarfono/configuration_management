#!/bin/bash
set -euo pipefail

USERNAME=$1 # sudo non-root username here

# Create user and immediately expire password to force a change on login
useradd --create-home --shell "/bin/bash" --groups sudo "${USERNAME}"
passwd --delete "${USERNAME}"
chage --lastday 0 "${USERNAME}"

# Create SSH directory for sudo user and move keys over
mkdir --parents "$HOME/.ssh"
cp /root/.ssh/authorized_keys "$HOME/.ssh"
chmod 0700 "$HOME/.ssh"
chmod 0600 "$HOME/.ssh/authorized_keys"
chown --recursive "${USERNAME}":"${USERNAME}" "$HOME/.ssh"

# Disable root SSH login with password
sed --in-place 's/^PermitRootLogin.*/PermitRootLogin prohibit-password/g' /etc/ssh/sshd_config
# if sshd -t -q; then systemctl restart sshd fi
