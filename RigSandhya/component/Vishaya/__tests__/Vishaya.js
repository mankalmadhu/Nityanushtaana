import 'react-native';
import React from 'react';
import ವಿಷಯ from '../Vishaya';
import { StyleSheet } from 'react-native';

import Renderer from 'react-test-renderer';

test("ವಿಷಯ" , () => {

   const vishaya = Renderer.create(
       <ವಿಷಯ ವಿನ್ಯಾಸ = {StyleSheet.create({})} ಮಾಹಿತಿ='Some Text'/>
   ).toJSON();

   expect(vishaya).toMatchSnapshot();

});