import React from 'react';
import ಆಚಮನೀಯಸೂಚನೆ from '../AachaManeyaSoochane';
import Renderer from 'react-test-renderer';

jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಆಚಮನೀಯಸೂಚನೆ" , () => {

  expect(Renderer.create(
    <ಆಚಮನೀಯಸೂಚನೆ/>
   ).toJSON()).toMatchSnapshot();

});