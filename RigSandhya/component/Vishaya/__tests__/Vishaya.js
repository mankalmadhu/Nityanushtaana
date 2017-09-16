import 'react-native';
import React from 'react';
import ವಿಷಯ from '../Vishaya';
import { StyleSheet } from 'react-native';

import Renderer from 'react-test-renderer';

test("ವಿಷಯ" , () => {

expect(Renderer.create(
    <ವಿಷಯ ವಿನ್ಯಾಸ = {StyleSheet.create({})} >
      Some Text
    </ವಿಷಯ>
).toJSON()).toMatchSnapshot();

});