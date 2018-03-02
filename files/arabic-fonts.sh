#!/bin/bash

rm -rf /tmp/arabic_fonts
mkdir /tmp/arabic_fonts
cd /tmp/arabic_fonts

wget http://fonts.qurancomplex.gov.sa/wp-content/uploads/2012/06/UthmanTN1-Ver10.zip
wget http://fonts.qurancomplex.gov.sa/wp-content/uploads/2012/06/UthmanTN1B-Ver10.zip
wget http://fonts.qurancomplex.gov.sa/download/UthmanicHafs1Ver09Font.zip
# wget http://fonts.qurancomplex.gov.sa/download/UthmanicHafs1Ver09Word.zip

wget http://fonts.qurancomplex.gov.sa/download/Symbols1_Ver02.otf
wget http://fonts.qurancomplex.gov.sa/wp-content/uploads/2011/06/Outlinedv001.zip
wget http://fonts.qurancomplex.gov.sa/wp-content/uploads/2014/07/KFGQPC-Dot-Font.zip
wget -O google_kufi.zip http://fonts.gstatic.com/ea/droidarabickufi/v6/download.zip
wget -O google_naskh.zip http://fonts.gstatic.com/ea/droidarabicnaskh/v7/download.zip

for my in $(ls *.zip); do unzip $my; done;
rm *.zip
cd ..
sudo mv ./arabic_fonts /usr/share/fonts
sudo fc-cache -f -v
