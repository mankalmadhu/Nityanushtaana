import 'react-native';
import React from 'react';
import ಪುಟ from '../Puta';
import {Text} from 'react-native';

import Renderer from 'react-test-renderer';

test("ಪುಟ" , () => {

   expect(Renderer.create(
    <ಪುಟ><Text>Test</Text></ಪುಟ>
  ).toJSON()).toMatchSnapshot();

});