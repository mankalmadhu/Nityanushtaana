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
import { Navigation, Card, NavBar } from 'react-router-navigation';

import Parividi from './component/Parividi/Parividi';
import Shreekara from './component/Shreekara/Shreekara';
import ParividiShershike from './component/ParividiShershike/ParividiShershike';
 
const RigSandhya = () => (
  <NativeRouter style={styles.container}>
    <Navigation>
      <Card exact path="/" component={Parividi} renderNavBar= {()=>(<ParividiShershike/>)}/>
      <Card path="/shubhamastu"  component={Shreekara}/>
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
  },
});

AppRegistry.registerComponent('RigSandhya', () => RigSandhya);
