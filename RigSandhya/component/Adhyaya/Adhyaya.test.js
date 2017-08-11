import 'react-native';
import React from 'react';
import Adhyaya from './Adhyaya';

import Renderer from 'react-test-renderer';

const testData = {"chitra":{"uri":"largepic"}, "shershike":"last"};

test("Adhyaya" , () => {

   const adhyaya = Renderer.create(
       <Adhyaya {...testData}/>
   ).toJSON();

   expect(adhyaya).toMatchSnapshot();

});