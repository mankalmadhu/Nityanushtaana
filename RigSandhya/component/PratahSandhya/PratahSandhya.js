import React from 'react';
import { View, ViewPagerAndroid, Text } from 'react-native';
import pratahSandhyaVinyasa from './PratahSandhya.vinyasa';

import ಆಸನಸೂಚನೆ from '../Ghatta/Sochane/AasanaSoochane';
import ಆಚಮನೀಯ from '../Ghatta/Aachamaneya/Aachamaneya';
import ಪ್ರೋಕ್ಷಣ from '../Ghatta/Prokshana/Prokshana';
import ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ from '../Ghatta/Sankalpa/PratahSandhyaSankalpa';
import ಪ್ರಾತಃಮಾರ್ಜನೆ from '../Ghatta/Marjane/PratahMarjane';

export default class ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ extends React.Component {

  render() {
    return (
      <ViewPagerAndroid style={pratahSandhyaVinyasa.avarana} initialPage={0}>
        <View>
          <ಆಸನಸೂಚನೆ />
          <ಆಚಮನೀಯ />
        </View>
        <View>
          <ಪ್ರೋಕ್ಷಣ />
        </View>
        <View>
          <ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ />
        </View>
        <View>
        <ಆಚಮನೀಯ />
        </View>
        <View>
        <ಪ್ರಾತಃಮಾರ್ಜನೆ />
        </View>
        

      </ViewPagerAndroid>
    );
  }
}
