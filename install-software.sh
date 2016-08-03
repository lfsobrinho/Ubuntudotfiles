#!/bin/bash

echo "\nUpdate apt-get"
sudo apt-get update
sudo apt-get upgrade

#echo "Add repository JAVA 8"
#sudo add-apt-repository ppa:webupd8team/java -y
#
# echo "Add repository ATOM"
# sudo add-apt-repository ppa:webupd8team/atom -y

# sudo apt-get update

# packages=(
  sudo apt-get install make -y
  sudo apt-get install build-essential -y
  sudo apt-get install libssl-dev -y
  sudo apt-get install zlib1g-dev -y
  sudo apt-get install libbz2-dev -y
  sudo apt-get install libreadline-dev -y
  sudo apt-get install libsqlite3-dev -y
  sudo apt-get install wget -y
  sudo apt-get install curl -y
  sudo apt-get install llvm -y
  sudo apt-get install libncurses5-dev -y
  sudo apt-get install xz-utils -y
  sudo apt-get install libcurl4-gnutls-dev -y
  sudo apt-get install libexpat1-dev -y
  sudo apt-get install gettext -y
  sudo apt-get install unzip -y

  # atom
  sudo apt-get install virtualbox -y

  #SQL
  sudo apt-get install postgresql -y
  sudo apt-get install postgresql-contrib -y
  sudo apt-get install mysql-server -y
  sudo apt-get install pgadmin3 -y
  sudo apt-get install mysql-workbench -y

  # oracle-java8-installer

# )

# packages=($(setdiff "${packages[*]}" "$(dpkg --get-selections | grep -v deinstall | awk '{print $1}')"))

# if (( ${#packages[@]} > 0 )); then
#   for package in "${packages[@]}"; do
#     echo "Installing apt-get packages: $package"
#     sudo apt-get install "$package"
#   done
# fi

echo "Create user account to postgres"
sudo -i -u postgres

echo "Install RVM"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby

echo "Install PYENV"
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

echo "Mysql Server"
sudo mysql_secure_installation
