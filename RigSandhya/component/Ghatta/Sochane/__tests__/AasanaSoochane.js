import React from 'react';
import ಆಸನಸೂಚನೆ from '../AasanaSoochane';
import Renderer from 'react-test-renderer';

test("ಆಸನಸೂಚನೆ" , () => {
  const aasanaSochane = Renderer.create(
    <ಆಸನಸೂಚನೆ/>
   ).toJSON();

  expect(aasanaSochane).toMatchSnapshot();

});