import React from 'react';
import ಆಚಮನೀಯ from '../Aachamaneya';
import Renderer from 'react-test-renderer';

test("ಆಚಮನೀಯ", () => {
  const achamaneya = Renderer.create(
    <ಆಚಮನೀಯ />
  ).toJSON();

  expect(achamaneya).toMatchSnapshot();

});