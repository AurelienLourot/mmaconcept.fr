set -e

cd thirdparty/
sudo dpkg -i hugo_*.deb

# https://askubuntu.com/questions/575505/glibcxx-3-4-20-not-found-how-to-fix-this-error
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install libstdc++6

# https://askubuntu.com/a/792471/113686
sudo dpkg -i gcc-*.deb
sudo dpkg --auto-deconfigure -i libstdc*.deb
