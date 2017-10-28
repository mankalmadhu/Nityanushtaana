import React from 'react';
import {  Text } from 'react-native';
import { StyleSheet } from 'react-native';

export const vinyasa = StyleSheet.create({
  shershike :{
    marginLeft: 12,
    fontFamily: 'Ganapati',
    textAlign:'justify',
    color: '#ffff99',
    fontSize: 19,
    lineHeight:50
  }});
  
export default ವಿಧಾನ = (props) => (
    <Text style={vinyasa.shershike}>
      {props.children}
    </Text>
  
); 