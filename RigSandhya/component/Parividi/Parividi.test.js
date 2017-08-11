import 'react-native';
import React from 'react';
import Parividi from './Parividi';

import Renderer from 'react-test-renderer';

jest.mock('../Prakarana/Prakarana');
jest.mock('../ParividiShershike/ParividiShershike');
jest.mock('./Parividi.data',()=>{
  return {
    
    prakaranaMahiti: [{ 
        "title":  "MockTitle1",
        "picture": 'SomePicture1'
      },
      { 
        "title":  "MockTitle2",
        "picture": 'SomePicture2'
      }]
}});

test("Parividi Render" , () => {
   const parividiRenderer = Renderer.create(
       <Parividi/>
   ).toJSON();

   expect(parividiRenderer).toMatchSnapshot();

});