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

export default  ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ = () => (
  <View>
     <ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ />
     <ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ/>
     <ವ್ಯಾಹೃತಿ />
     <ಗಾಯತ್ರೀಮ೦ತ್ರ />
     <ಓಮಾಪೋ />
     <ಪ್ರೀತ್ಯರ್ಥ/>
     <ವಿಷಯ 
      ವಿನ್ಯಾಸ = {ಘಟ್ಟವಿನ್ಯಾಸ.ವಿನಿಯೋಗ} 
      ಮಾಹಿತಿ={`ಪ್ರಾತಃ ಸ೦ಧ್ಯಾ೦ ಉಪಾಸ್ಯೇ ॥`}/>    
  </View>

);
