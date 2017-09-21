import React from 'react';
import { View, Text } from 'react-native';

import ಗಾಯತ್ರೀಮ೦ತ್ರ from '../Gayatri/GayatriMantra';
import ವ್ಯಾಹೃತಿ from '../Gayatri/Vyahruti';
import ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ from './SankalpaPurvanga';
import ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ from './SankalpaShershike';
import ಓಮಾಪೋ from './Oomapo';
import ಘಟ್ಟವಿನ್ಯಾಸ from '../Ghatta.vinyasa';
import ವಿಷಯ from '../../Vishaya/Vishaya';
import ಪ್ರೀತ್ಯರ್ಥ from './Preetyartha';

export default ಪ್ರಾತಃಜಪಸ೦ಕಲ್ಪ = () => (
  <View>
    <ವಿಷಯ ವಿನ್ಯಾಸ={ಘಟ್ಟವಿನ್ಯಾಸ.ಶೀರ್ಷಿಕೆ}>
      ಗಾಯತ್ರೀ ಜಪ ಸ೦ಕಲ್ಪ
    </ವಿಷಯ>
    <ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ />
    <ವ್ಯಾಹೃತಿ />
    <ಗಾಯತ್ರೀಮ೦ತ್ರ />
    <ಓಮಾಪೋ />
    <ಪ್ರೀತ್ಯರ್ಥ>
      ಪ್ರಾತಃ ಸ೦ಧ್ಯಾ೦ಗ ಯಥಾ ಶಕ್ತಿ ಗಾಯತ್ರೀ ಮಹಾಮ೦ತ್ರ ಜಪ೦ ಕರಿಷ್ಯೇ ॥
    </ಪ್ರೀತ್ಯರ್ಥ>
  </View>

);