cd component/Ghatta
fileNames=($(grep -rl "jest.mock.*Ghatta.vinyasa.*"))
for fileName in "${fileNames[@]}"
  do
   
    sed -i "s/jest.mock.*Ghatta.vinyasa.*//g" $fileName
   
  done
cd ../..