import React from 'react';
import { View, Text } from 'react-native';

import ಗಾಯತ್ರೀಮ೦ತ್ರ from '../Gayatri/GayatriMantra';
import ವ್ಯಾಹೃತಿ from '../Gayatri/Vyahruti';
import ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ from './SankalpaPurvanga';
import ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ from './SankalpaShershike';
import ಓಮಾಪೋ from './Oomapo';
import ಘಟ್ಟವಿನ್ಯಾಸ from '../Ghatta.vinyasa';
import ವಿಷಯ from '../../Vishaya/Vishaya';

export default  ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ = () => (
  <View>
     <ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ />
     <ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ/>
     <ವ್ಯಾಹೃತಿ />
     <ಗಾಯತ್ರೀಮ೦ತ್ರ />
     <ಓಮಾಪೋ />
     <ವಿಷಯ 
      ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ವಿನಿಯೋಗ} 
      ಮಾಹಿತಿ={`ಮಮ ಉಪಾತ್ತ ಸಮಸ್ತ ದುರಿತಕ್ಷಯದ್ವಾರಾ ಶ್ರೀ ಪರಮೇಶ್ವರ ಪ್ರೀತ್ಯರ್ಥ೦ ಪ್ರಾತಃ ಸ೦ಧ್ಯಾ೦ ಉಪಾಸ್ಯೇ ॥`}/>    
  </View>

);
