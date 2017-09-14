import React from 'react';
import ಆಸನಸೂಚನೆ from '../AasanaSoochane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಆಸನಸೂಚನೆ" , () => {
  const aasanaSochane = Renderer.create(
    <ಆಸನಸೂಚನೆ/>
   ).toJSON();

  expect(aasanaSochane).toMatchSnapshot();

});