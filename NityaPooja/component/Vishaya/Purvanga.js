import React from 'react';
import {  Text } from 'react-native';
import { StyleSheet } from 'react-native';
 
export const vinyasa = StyleSheet.create({
  
  purvanga :{
    marginLeft: 12,
    fontFamily: 'Ganapati',
    textAlign:'justify',
    color: '#6695e2',
    fontSize:18,
    lineHeight:50
  }});
 
export default ಪೂರ್ವಾ೦ಗ = (props) => (
    <Text style={vinyasa.purvanga}>
      {props.children}
    </Text>
  
); 