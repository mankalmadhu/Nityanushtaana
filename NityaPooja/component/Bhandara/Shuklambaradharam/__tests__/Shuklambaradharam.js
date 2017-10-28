import 'react-native';
import React from 'react';
import ಶುಕ್ಲಾ೦ಬರಧರ೦ from '../Shuklambaradharam';

import Renderer from 'react-test-renderer';

test("ಶುಕ್ಲಾ೦ಬರಧರ೦" , () => {

expect(Renderer.create(
    <ಶುಕ್ಲಾ೦ಬರಧರ೦ />
).toJSON()).toMatchSnapshot();

});