import React from 'react';
import { View, Image, Text } from 'react-native';
import {adhyayaVinyasa} from './Adhyaya.vinyasa';

export default Adhyaya = (props) => (
  <View style={adhyayaVinyasa.avarana}>
    <Image source={props.chitra} style={adhyayaVinyasa.chitra} />
    <Text style={adhyayaVinyasa.pathya}>
      {`${props.shershike}`}
    </Text>
  </View>
);