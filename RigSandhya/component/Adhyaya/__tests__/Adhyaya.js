import 'react-native';
import React from 'react';
import Renderer from 'react-test-renderer';
import { MemoryRouter } from 'react-router';

import Adhyaya from '../Adhyaya';

const testData = {"chitra":{"uri":"largepic"}, "shershike":"last"};

jest.mock('TouchableHighlight', () => {
    const jestReactNative = require('react-native/jest/mockComponent');
    return jestReactNative('TouchableHighlight');
  });

test("Adhyaya" , () => {

   const adhyaya = Renderer.create(
    <MemoryRouter> 
       <Adhyaya {...testData}/>
    </MemoryRouter>  
   ).toJSON();

   expect(adhyaya).toMatchSnapshot();

});    