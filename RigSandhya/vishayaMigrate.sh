cd component/Ghatta
fileNames=($(grep -rl '<ವಿಷಯ ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ಪೂರ್ವಾ೦ಗ}>' --exclude-dir={'__tests__','Ghatta'}))
for fileName in "${fileNames[@]}"
  do
    sed -i "4i import ಪೂರ್ವಾ೦ಗ from '../../Vishaya/Purvanga';" $fileName
    sed -i "s/<ವಿಷಯ ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ಪೂರ್ವಾ೦ಗ}>/<ಪೂರ್ವಾ೦ಗ>/g" $fileName
    dir=$(dirname "${fileName}")
    fileBase=$(basename "${fileName}")
    sed -i "7i jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');" $dir/'__tests__'/$fileBase
  done
cd ../..