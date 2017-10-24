import React from 'react';
import ಪ್ರಾತಃಸ್ವರೂಪ from '../PratahSwaroopa';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
 
test("ಪ್ರಾತಃಸ್ವರೂಪ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಃಸ್ವರೂಪ />
  ).toJSON()).toMatchSnapshot();

});