import React from 'react';
import ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ from '../MarjaneSankalpa';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');

test("ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ", () => {
  expect(Renderer.create(
    <ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});