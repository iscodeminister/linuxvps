# linuxvps

## swap
> wget -O swap.sh https://raw.githubusercontent.com/yuju520/Script/main/swap.sh && chmod +x swap.sh && clear && ./swap.sh

## Docker
> wget -qO- get.docker.com | bash
> sudo systemctl enable docker

### Docker uninstall
> sudo apt-get purge docker-ce docker-ce-cli containerd.io
> sudo apt-get remove docker docker-engine
> sudo rm -rf /var/lib/docker
> sudo rm -rf /var/lib/containerd