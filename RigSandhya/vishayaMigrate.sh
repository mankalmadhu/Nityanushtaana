cd component/Ghatta
fileNames=($(grep -rl "import ಘಟ್ಟವಿನ್ಯಾಸ from"))
for fileName in "${fileNames[@]}"
  do
   
    sed -i "s/import ಘಟ್ಟವಿನ್ಯಾಸ from.*//g" $fileName
   
  done
cd ../..