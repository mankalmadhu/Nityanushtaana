import React from 'react';
import ದ್ವಿತೀಯಮಾರ್ಜನೆ from '../DwiteyaMarjane';
import Renderer from 'react-test-renderer';

test("ದ್ವಿತೀಯಮಾರ್ಜನೆ", () => {
  const marjane = Renderer.create(
    <ದ್ವಿತೀಯಮಾರ್ಜನೆ />
  ).toJSON();

  expect(marjane).toMatchSnapshot();

});