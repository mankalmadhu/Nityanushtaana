cd component/Ghatta
fileNames=($(grep -rl '<ವಿಷಯ ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ಶೀರ್ಷಿಕೆ}>' --exclude-dir={'__tests__','Ghatta'}))
for fileName in "${fileNames[@]}"
  do
    sed -i "4i import ಶೀರ್ಷಿಕೆ from '../../Vishaya/Sheershike';" $fileName
    sed -i "s/<ವಿಷಯ ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ಶೀರ್ಷಿಕೆ}>/<ಶೀರ್ಷಿಕೆ>/g" $fileName
    dir=$(dirname "${fileName}")
    fileBase=$(basename "${fileName}")
    sed -i "10i jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');" $dir/'__tests__'/$fileBase
  done
cd ../..