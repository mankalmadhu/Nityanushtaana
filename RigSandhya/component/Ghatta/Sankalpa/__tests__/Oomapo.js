import React from 'react';
import ಓಮಾಪೋ from '../Oomapo';
import Renderer from 'react-test-renderer';

test("ಓಮಾಪೋ", () => {
  const oomapo = Renderer.create(
    <ಓಮಾಪೋ />
  ).toJSON();

  expect(oomapo).toMatchSnapshot();

});