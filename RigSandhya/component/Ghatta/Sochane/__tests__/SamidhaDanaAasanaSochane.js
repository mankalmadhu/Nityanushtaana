import React from 'react';
import ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ from '../SamidhaDanaAasanaSochane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ" , () => {
  expect(Renderer.create(
    <ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ/>
   ).toJSON()).toMatchSnapshot();

});