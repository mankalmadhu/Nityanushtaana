import React from 'react';
import { View, Image, Text } from 'react-native';
import prakaranaVinyasa from './Prakarana.Styles';

const Prakarana = (props) => (
  <View style={prakaranaVinyasa.container}>
    <Image source={props.picture} style={prakaranaVinyasa.photo} />
    <Text style={prakaranaVinyasa.text}>
      {`${props.title}`}
    </Text>
  </View>
);

export default Prakarana;