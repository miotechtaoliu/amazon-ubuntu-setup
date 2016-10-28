sudo apt-get update
sudo apt-get install -y vim git zsh wget curl zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh -
echo "DOCKER_OPTS=\"\$DOCKER_OPTS --registry-mirror=https://s63w0682.mirror.aliyuncs.com\"" | sudo tee -a /etc/default/docker
sudo service docker restart
sudo groupadd docker
sudo usermod -aG docker $USER
git config --global core.editor "vim"
