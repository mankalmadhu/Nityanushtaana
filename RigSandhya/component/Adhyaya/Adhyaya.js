import React from 'react';
import { TouchableHighlight,View, Image, Text } from 'react-native';
import {Link } from 'react-router-native';

import adhyayaVinyasa from './Adhyaya.vinyasa';

export default class Adhyaya extends React.Component {
  constructor(props) {
    super(props);
  }
  
  render() {
   return (
      <Link to="/shubhamastu" component={TouchableHighlight}>
        <View style={adhyayaVinyasa.avarana}>
         <Image source={this.props.chitra} style={adhyayaVinyasa.chitra} />
         <Text style={adhyayaVinyasa.pathya}>
          {`${this.props.shershike}`}
         </Text>
         </View>
       </Link>
     );
  }
}