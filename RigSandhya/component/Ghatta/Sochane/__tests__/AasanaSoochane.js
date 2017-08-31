import React from 'react';
import ಆಸನಸೂಚನೆ from '../AasanaSoochane';

test("ಆಸನಸೂಚನೆ" , () => {
  expect(<div>{ಆಸನಸೂಚನೆ}</div>).toMatchSnapshot();
});