/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';
import { NativeRouter } from 'react-router-native';

import Diksoochi from './component/Diksoochi/Diksoochi';

export default RigSandhya = () => (
  <NativeRouter style={styles.container} >
    <Diksoochi/>
  </NativeRouter>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  }
 
});

AppRegistry.registerComponent('RigSandhya', () => RigSandhya);
