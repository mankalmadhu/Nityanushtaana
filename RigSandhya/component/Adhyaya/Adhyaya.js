import React from 'react';
import { TouchableHighlight,View, Image, Text } from 'react-native';
import adhyayaVinyasa from './Adhyaya.vinyasa';


export default class Adhyaya extends React.Component {
  constructor(props) {
    super(props);
  }

  handleAdhyayaPress = (shershike) => {
    alert(shershike);
  }

  render() {
   return (
      <TouchableHighlight onPress={this.handleAdhyayaPress(this.props.shershike)}>
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