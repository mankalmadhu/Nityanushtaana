import React from 'react';
import { View } from 'react-native';

import ಘಟ್ಟವಿನ್ಯಾಸ from '../Ghatta.vinyasa';
import ವಿಷಯ from '../../Vishaya/Vishaya';
import ತ್ರಿಹೃತಿ from '../Gayatri/Trihruti';
import ಗಾಯತ್ರೀಮ೦ತ್ರ from '../Gayatri/GayatriMantra';

export default ಜಪ = () => (
<View> 
  <ವಿಷಯ ವಿನ್ಯಾಸ={ಘಟ್ಟವಿನ್ಯಾಸ.ಶೀರ್ಷಿಕೆ} >
    ಜಪ
  </ವಿಷಯ>
  <ತ್ರಿಹೃತಿ>
    <ಗಾಯತ್ರೀಮ೦ತ್ರ />
  </ತ್ರಿಹೃತಿ>
  <ವಿಷಯ ವಿನ್ಯಾಸ={ಘಟ್ಟವಿನ್ಯಾಸ.ವಿನಿಯೋಗ}>
    (ಯಥಾಶಕ್ತಿ)
  </ವಿಷಯ>
  <ವಿಷಯ ವಿನ್ಯಾಸ={ಘಟ್ಟವಿನ್ಯಾಸ.ವಿನಿಯೋಗ}>
    ತತ್ಸಬ್ರಹ್ಮಾರ್ಪಣಮಸ್ತು
  </ವಿಷಯ>
</View>
);
