import React from 'react';
import { View, Text } from 'react-native';
import shreekaraVinyasa from './Shreekara.vinyasa';

export default class Shreekara extends React.Component {

  render()
  {
    return (
  <View style={shreekaraVinyasa.avarana}>
    <Text style={shreekaraVinyasa.pathya}>
      ಓ೦ ಶ್ರೀ ಗಣಪತಿ ಶಾರದ ಗುರುಭ್ಯೋ ನಮಃ ॥
    </Text>
  </View>
    );
  }
}
