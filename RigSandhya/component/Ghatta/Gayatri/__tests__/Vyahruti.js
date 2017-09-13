import React from 'react';
import ವ್ಯಾಹೃತಿ from '../Vyahruti';
import Renderer from 'react-test-renderer';

test("ವ್ಯಾಹೃತಿ", () => {
  const vyaaHruti = Renderer.create(
    <ವ್ಯಾಹೃತಿ />
  ).toJSON();

  expect(vyaaHruti).toMatchSnapshot();

});