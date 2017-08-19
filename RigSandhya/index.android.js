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
import { NativeRouter, Link } from 'react-router-native';
import {Navigation, Card} from 'react-router-navigation';

import Parividi from './component/Parividi/Parividi';
import Shreekara from './component/Shreekara/Shreekara';
import Shershike from './component/Shershike/Shershike';
 
const RigSandhya = () => (
  
  <NativeRouter style={styles.container} >
    <Navigation navBarStyle={{backgroundColor: '#C1C1C1'}}>
      <Card exact path="/" component={Parividi} renderTitle = {()=>(<ParividiShershike shershike='ಋಗ್ವೇದ ಸ೦ಧ್ಯಾವ೦ದನ'/>)}/>
      <Card path="/ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ'/>)} />
      <Card path="/ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ'/>)} />
      <Card path="/ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ'/>)} />
      <Card path="/ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ'/>)} />
      <Card path="/ಸಾಯ೦ಸ೦ಧ್ಯಾ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಸಾಯ೦ಸ೦ಧ್ಯಾ'/>)} />
      <Card path="/ಸಾಯ೦ಸಮಿಧಾದಾನ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಸಾಯ೦ಸಮಿಧಾದಾನ'/>)} />
      <Card path="/ಯಜ್ಞೋಪವೀತ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಯಜ್ಞೋಪವೀತ'/>)} />
      <Card path="/ಉಪನಯನಕಾರಿಕ"  component={Shreekara} renderTitle = {()=>(<ParividiShershike shershike='ಉಪನಯನಕಾರಿಕ'/>)} />
    </Navigation>
   </NativeRouter>
)
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
