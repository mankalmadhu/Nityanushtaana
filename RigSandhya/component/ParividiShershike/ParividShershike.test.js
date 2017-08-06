import 'react-native';
import React from 'react';
import ParividiShershike from './ParividiShershike';

import Renderer from 'react-test-renderer';

test("ParividiShershike Render" , () => {

   const parividiShershikeRenderer = Renderer.create(
       <ParividiShershike/>
   ).toJSON();

   expect(parividiShershikeRenderer).toMatchSnapshot();

});