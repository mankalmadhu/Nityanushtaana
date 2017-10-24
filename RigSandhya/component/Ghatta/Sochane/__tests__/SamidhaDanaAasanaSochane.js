import React from 'react';
import ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ from '../SamidhaDanaAasanaSochane';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ" , () => {
  expect(Renderer.create(
    <ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ/>
   ).toJSON()).toMatchSnapshot();

});