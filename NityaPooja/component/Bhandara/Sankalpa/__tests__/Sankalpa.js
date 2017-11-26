import React from 'react';
import ಸ೦ಕಲ್ಪ from '../Sankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಸ೦ಕಲ್ಪ", () => {

  expect(Renderer.create(
    <ಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});