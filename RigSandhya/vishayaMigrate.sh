cd component/Ghatta
fileNames=($(grep -rl "jest.mock.*ವಿಷಯ.*"))
for fileName in "${fileNames[@]}"
  do
    
    sed -i "s/jest.mock.*ವಿಷಯ.*//g" $fileName
   
  done
cd ../..