import React from 'react';
import { View, Text } from 'react-native';
import shreekaraVinyasa from './Shreekara.vinyasa';
import { StackNavigator } from 'react-navigation';

export default class Shreekara extends React.Component {
// Nav options can be defined as a function of the screen's props:
  static navigationOptions = ({ navigation }) => ({
    title: `${navigation.state.params.shershike}`,
  });

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
