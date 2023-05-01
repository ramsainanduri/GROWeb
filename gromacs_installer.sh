#!/bin/sh
echo "		 ____  _ ____
                | __ )(_|  _ \
                |  _ \| | |_) |
                | |_) | |  _ <
                |____/|_|_| \_\

*************************************************
*                                               *
*       WELCOME TO BIOINFORMATICS REVIEW        *
*               GROMACS INSTALLER               *
*               BY TARIQ ABDULLAH               *
*                                               *
*************************************************
                ";
echo "What should I call you, Master? (Name): ";
read name;
echo "Hey $name, What is your E-Mail Address? : ";
read email;
echo "Thank you! Your installation is starting ....Ready?";
read yesno;
pwd
sudo apt-get update
sudo apt-get upgrade

sudo apt remove --purge --auto-remove cmake
#wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
#sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main'
#sudo apt-get update
#sudo apt-get install kitware-archive-keyring
#sudo rm /etc/apt/trusted.gpg.d/kitware.gpg
#sudo apt-get update
apt-get install cmake -y
apt-get install less wget

cmake --version
apt-get install build-essential -y 
mkdir gromacs/
cd gromacs/
wget https://ftp.gromacs.org/regressiontests/regressiontests-2023.1.tar.gz
tar xvzf regressiontests-2023.1.tar.gz
apt-get install libfftw3-dev -y
wget ftp://ftp.gromacs.org/gromacs/gromacs-2023.1.tar.gz
tar xvzf gromacs-2023.1.tar.gz
cd gromacs-2023.1/
mkdir build
cd build
cmake .. -DGMX_BUILD_OWN_FFTW=OFF -DREGRESSIONTEST_DOWNLOAD=OFF -DCMAKE_C_COMPILER=gcc -DREGRESSIONTEST_PATH=./../../regressiontests-2023.1
make check
make install

source /usr/local/gromacs/bin/GMXRC

echo "source /usr/local/gromacs/bin/GMXRC" >> ~/.bashrc
gmx pdb2gmx --version

echo "
*************************************************************************
*                                                                       *
*       Hey $name, I have successfully Installed Gromacs for you!       *
*       Liked my work? Consider subscribing to Bioinformatics Review    *
*               problems? mail me tariq@ideaquotient.in                 *
*                                                                       *
*************************************************************************

";