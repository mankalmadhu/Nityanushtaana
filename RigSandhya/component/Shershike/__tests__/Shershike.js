import 'react-native';
import React from 'react';
import Shershike from '../Shershike';

import Renderer from 'react-test-renderer';

test("Shershike Render" , () => {

   const shershike = Renderer.create(
       <Shershike shershike='TestTitle'/>
   ).toJSON();

   expect(shershike).toMatchSnapshot();

});