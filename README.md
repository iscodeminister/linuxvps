# linuxvps

## BBR
```bash
wget -O tcpx.sh "https://github.com/ylx2016/Linux-NetSpeed/raw/master/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh
```

## swap
```bash
wget -O swap.sh https://raw.githubusercontent.com/yuju520/Script/main/swap.sh && chmod +x swap.sh && clear && ./swap.sh
```

## Docker
```bash
wget -qO- get.docker.com | bash
sudo systemctl enable docker
```

### Docker uninstall
```bash
sudo apt-get purge docker-ce docker-ce-cli containerd.io
sudo apt-get remove docker docker-engine
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
```

## Fail2ban
```bash
apt install fail2ban
nano /etc/fail2ban/jail.local
```

```bash
[DEFAULT]
ignoreip = 127.0.0.1

allowipv6 = auto

backend = systemd

[sshd]

enabled = true

filter = sshd

port = ssh

action = iptables[name=SSH, port=ssh, protocol=tcp]

logpath = /var/log/secure

bantime = 86400

findtime = 86400

maxretry = 3
```
```bash
sudo systemctl enable fail2ban
sudo systemctl restart fail2ban
sudo systemctl status fail2ban
fail2ban-client status
```