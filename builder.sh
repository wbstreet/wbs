cd $(dirname $0)

git submodule init
git submodule update

cd modules/wbs_core
git submodule init
git submodule update
cd ../../

# load engine

wget -O engine.zip https://addon.websitebaker.org/pages/en/browse-add-ons.php?download=04A499A4
unzip engine.zip
rm engine.zip
mv ./config.php.new ./config.php

# creating the archive

#name=`date +%Y%m%d-%H%M%S`
#tar -cz ./* > ../../engine-$name.tar.gz
#rm -rv ./*

# Done :)
echo "done :-)"
