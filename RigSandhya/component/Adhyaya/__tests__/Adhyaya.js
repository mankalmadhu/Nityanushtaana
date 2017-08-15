import 'react-native';
import React from 'react';
import Adhyaya from '../Adhyaya';

import Renderer from 'react-test-renderer';

const testData = {"chitra":{"uri":"largepic"}, "shershike":"last"};

jest.mock('TouchableHighlight', () => {
    const jestReactNative = require('react-native/jest/mockComponent');
    return jestReactNative('TouchableHighlight');
  });

test("Adhyaya" , () => {

   const adhyaya = Renderer.create(
       <Adhyaya {...testData}/>
   ).toJSON();

   expect(adhyaya).toMatchSnapshot();

});    