import React from 'react';
import Renderer from 'react-test-renderer';
import Diksoochi from '../Diksoochi';

jest.mock('react-router-navigation', (props)=>{
  const MockReact = require('React');
  class Navigation extends MockReact.Component
  {
    render() {
      return MockReact.createElement('Navigation' , this.props);
    }
  }

  class Card extends MockReact.Component
  {
    render() {
      return MockReact.createElement('Card' , this.props);
    }
  }

  return ({Navigation : Navigation,
          Card : Card });
}) ;

  
test("Diksoochi" , () => {
  const diksoochi = Renderer.create(
    <Diksoochi/>
   ).toJSON();

  expect(diksoochi).toMatchSnapshot();
  
});
  