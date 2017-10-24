import React from 'react';
import ಮ೦ತ್ರಾರ್ಥ from '../Mantrartha';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಮ೦ತ್ರಾರ್ಥ", () => {
  expect(Renderer.create(
    <ಮ೦ತ್ರಾರ್ಥ />
  ).toJSON()).toMatchSnapshot();

});