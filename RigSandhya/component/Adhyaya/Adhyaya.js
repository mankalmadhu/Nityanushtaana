import React from 'react';
import { TouchableHighlight,View, Image, Text } from 'react-native';
import adhyayaVinyasa from './Adhyaya.vinyasa';
import { StackNavigator } from 'react-navigation';

export default class Adhyaya extends React.Component {
  constructor(props) {
    super(props);
  }

  handleAdhyayaPress = () => {
    const { navigate } = this.props.navigation;
    navigate(this.props.shershike, { shershike: this.props.shershike });
  }

  render() {
   return (
      <TouchableHighlight onPress={this.handleAdhyayaPress}>
        <View style={adhyayaVinyasa.avarana}>
        <Image source={this.props.chitra} style={adhyayaVinyasa.chitra} />
        <Text style={adhyayaVinyasa.pathya}>
          {`${this.props.shershike}`}
        </Text>
        </View>
      </TouchableHighlight>
    );
  }
}