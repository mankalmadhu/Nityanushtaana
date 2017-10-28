import React from 'react';
import {  Text } from 'react-native';
import { StyleSheet } from 'react-native';

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
 
export default ವಿನಿಯೋಗ = (props) => (
    <Text style={vinyasa.viniyoga}>
      {props.children}
    </Text>
  
); 