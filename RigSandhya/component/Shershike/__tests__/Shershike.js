import 'react-native';
import React from 'react';
import Shershike from '../Shershike';
import { StyleSheet } from 'react-native';

import Renderer from 'react-test-renderer';

test("Shershike Render" , () => {

   const shershike = Renderer.create(
       <Shershike shershike='TestTitle' vinyasa={StyleSheet.create({avarana:{},pathya:{}})}/>
   ).toJSON();

   expect(shershike).toMatchSnapshot();

});