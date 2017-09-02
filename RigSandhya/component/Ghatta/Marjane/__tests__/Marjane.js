import React from 'react';
import ಮಾರ್ಜನೆ from '../Marjane';
import Renderer from 'react-test-renderer';

test("ಮಾರ್ಜನೆ", () => {
  const marjane = Renderer.create(
    <ಮಾರ್ಜನೆ />
  ).toJSON();

  expect(marjane).toMatchSnapshot();

});