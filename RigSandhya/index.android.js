/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  Text,
  View
} from 'react-native';
import { NativeRouter } from 'react-router-native';

import Diksoochi from './component/Diksoochi/Diksoochi';

export default RigSandhya = () => (
  <NativeRouter>
    <Diksoochi/>
  </NativeRouter>
);

AppRegistry.registerComponent('RigSandhya', () => RigSandhya);
