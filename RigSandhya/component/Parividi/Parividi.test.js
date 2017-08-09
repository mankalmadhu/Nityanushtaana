import 'react-native';
import React from 'react';
import Parividi from './Parividi';

import Renderer from 'react-test-renderer';

jest.unmock('./Parividi.data.js');
import prakaranaMahiti from './Parividi.data';

jest.mock('../Prakarana/Prakarana');
jest.mock('../ParividiShershike/ParividiShershike');

function mockImageFunction(name)
{
   return jest.fn(function() {
    return name;
  })
}

prakaranaMahiti.sandhyaImage = mockImageFunction('./chitra/sandhya.png');
prakaranaMahiti.agnikaryaImage = mockImageFunction('./chitra/agnikarya.png');
prakaranaMahiti.upadeshaImage = mockImageFunction('./chitra/upadesha.png');

test("Parividi Render" , () => {

   
   const parividiRenderer = Renderer.create(
       <Parividi/>
   ).toJSON();

   expect(parividiRenderer).toMatchSnapshot();

});