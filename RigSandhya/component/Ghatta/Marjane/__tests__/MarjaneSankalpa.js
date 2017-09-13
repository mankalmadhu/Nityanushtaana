import React from 'react';
import ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ from '../MarjaneSankalpa';
import Renderer from 'react-test-renderer';

test("ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ", () => {
  const marjaneSankalpa = Renderer.create(
    <ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ />
  ).toJSON();

  expect(marjaneSankalpa).toMatchSnapshot();

});