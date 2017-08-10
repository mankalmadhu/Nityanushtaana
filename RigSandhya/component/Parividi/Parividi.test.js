import 'react-native';
import React from 'react';
import Parividi from './Parividi';

import Renderer from 'react-test-renderer';

jest.mock('../Prakarana/Prakarana');
jest.mock('../ParividiShershike/ParividiShershike');
jest.mock('./Parividi.data',()=>{
  
  return {
    sandhyaImage : './chitra/sandhya.png',
    agnikaryaImage : './chitra/agnikarya.png',
    upadeshaImage : './chitra/upadesha.png'
}});

test("Parividi Render" , () => {
   const parividiRenderer = Renderer.create(
       <Parividi/>
   ).toJSON();

   expect(parividiRenderer).toMatchSnapshot();

});