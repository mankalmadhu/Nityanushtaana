import React from 'react';
import ದೇವಪೂಜಾಆಸನಸೂಚನೆ from '../DevaPujaAasnaSochane';
import Renderer from 'react-test-renderer';

jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ದೇವಪೂಜಾಆಸನಸೂಚನೆ" , () => {
  expect(Renderer.create(
    <ದೇವಪೂಜಾಆಸನಸೂಚನೆ/>
   ).toJSON()).toMatchSnapshot();

});