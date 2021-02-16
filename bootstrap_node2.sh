# apt update -y && apt upgrade -y
# apt purge grub grub-pc grub-common -y && apt install grub-pc -y
apt install git fish zsh vim -y
touch .vimrc
echo "syntax on" >> .vimrc
echo "colo morning" >> .vimrc
echo "set nu" >> .vimrc
touch config.sh
sudo chmod 755 config.sh
echo "mkdir git" >> config.sh
echo "cd git" >> config.sh
echo "git clone https://github.com/enablerrr/onboarding-git.git" >> config.sh
echo "Welcome JamOps :-)"
./config.sh