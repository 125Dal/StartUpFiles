name='SetupDirectory'

cd ~
mkdir $name
cd $name

git clone git@github.com:125Dal/Brewfile.git
git clone git@github.com:125Dal/.zshrc.git
git clone git@github.com:125Dal/Hyper.js.git

cd Brewfile
brew bundle

cd ..
mv .zshrc/.zshrc ~
mv Hyper.js/.hyper.js ~

echo export PATH="/usr/local/bin/git/:$PATH:/opt/homebrew/bin/" >> ~/.zshrc
echo typeset -U PATH >> ~/.zshrc

cd ..
rm -Rf $name

thisname='StartUpFiles'
startupfiles=$(find ~/Documents -type d -name $thisname)
[[ $startupfiles != $name ]] && cd $startupfiles
cd ..
rm -Rf $thisname
