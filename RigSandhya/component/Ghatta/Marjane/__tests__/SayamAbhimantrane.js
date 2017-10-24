import React from 'react';
import ಸಾಯ೦ಅಭಿಮ೦ತ್ರಣೆ from '../SayamAbhimantrane';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ", () => {
  expect(Renderer.create(
    <ಸಾಯ೦ಅಭಿಮ೦ತ್ರಣೆ />
  ).toJSON()).toMatchSnapshot();

});