cd component/Ghatta
fileNames=($(grep -rl "import ವಿಷಯ from"))
for fileName in "${fileNames[@]}"
  do
   
    sed -i "s/import ವಿಷಯ from.*//g" $fileName
   
  done
cd ../..