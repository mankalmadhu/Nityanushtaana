import React from 'react';
import {  Text } from 'react-native';

export const vinyasa = StyleSheet.create({
  viniyoga :{
    marginLeft: 12,
    fontFamily: 'Ganapati',
    textAlign:'justify',
    fontSize: 18,
    color: '#ffffff',
    lineHeight:50
  }
  });
 
export default ವಿನಿಯೋಗವಿಷಯ = (props) => (
    <Text style={vinyasa.viniyoga}>
      {props.children}
    </Text>
  
); 