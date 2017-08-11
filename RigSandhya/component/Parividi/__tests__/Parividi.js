import 'react-native';
import React from 'react';
import Parividi from '../Parividi';

import Renderer from 'react-test-renderer';

jest.mock('../../Adhyaya/Adhyaya');
jest.mock('../../ParividiShershike/ParividiShershike');
jest.mock('../Parividi.mahiti',()=>{
  return {
    
    parividiMahiti: [{ 
        "shershike":  "MockTitle1",
        "chitra": 'SomePicture1'
      },
      { 
        "shershike":  "MockTitle2",
        "chitra": 'SomePicture2'
      }]
}});

test("Parividi" , () => {
   const parividi = Renderer.create(
       <Parividi/>
   ).toJSON();
   expect(parividi).toMatchSnapshot();
});