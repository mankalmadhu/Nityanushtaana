import 'react-native';
import React from 'react';
import Renderer from 'react-test-renderer';

import Adhyaya from '../Adhyaya';

jest.mock('react-router-native', (props)=>{
  const MockReact = require('React');
  class Link extends MockReact.Component
  {
    render() {
      return MockReact.createElement('Link' , this.props.to);
    }
  }
  return ({Link : Link});
}) ;

const testData = {"shershike":"last"};
test("Adhyaya Link Test" , () => {
   const adhyaya = Renderer.create(
        <Adhyaya {...testData}/>
    ).toJSON();

   expect(adhyaya).toMatchSnapshot();
});    