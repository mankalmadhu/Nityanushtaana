cd component/Ghatta
fileNames=($(grep -rl '<.*ವಿಷಯ ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ವಿನಿಯೋಗ}.*>' --exclude-dir={'__tests__'}))
for fileName in "${fileNames[@]}"
  do
    sed -i "4i import ವಿನಿಯೋಗ from '../../Vishaya/Viniyoga';" $fileName
    sed -i "s/<.*ವಿಷಯ ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ವಿನಿಯೋಗ}.*>/<ವಿನಿಯೋಗ>/g" $fileName
    dir=$(dirname "${fileName}")
    fileBase=$(basename "${fileName}")
    sed -i "7i jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');" $dir/'__tests__'/$fileBase
  done
cd ../..