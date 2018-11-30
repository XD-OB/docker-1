h docker_setup.sh

# Assuming you’re using zsh and you’ve already installed 
# VirtualBox from MSC

LOGIN=$(whoami)

# Setup Brew
curl -fsSL https://rawgit.com/gcamerli/42brew/master/set.sh | zsh

# Setup docker from Brew
brew install docker
brew install docker-machine

# Check docker version
docker version
docker-machine version

# Create a default docker machine
docker-machine create --driver virtualbox default
docker-machine ls

# Create a personal dir in sgoinfre
rm -rf ~/goinfre
mkdir /sgoinfre/goinfre/Perso/$LOGIN
chmod 700 /sgoinfre/goinfre/Perso/$LOGIN

# Create symbolic links
ln -s /sgoinfre/goinfre/Perso/$LOGIN ~/goinfre 
mv ~/.docker ~/goinfre
mv ~/VirtualBox\ VMs ~/goinfre
ln -s ~/goinfre/.docker ~/.docker
ln -s ~/goinfre/VirtualBox\ VMs ~/VirtualBox\ VMs

# Set docker env variables
cat >> ~/.zshrc << EOF
# Set docker env variables
eval $(docker-machine env default)
EOF

# Update your rc file
source ~/.zshrc
