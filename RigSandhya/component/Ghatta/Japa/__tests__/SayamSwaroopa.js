import React from 'react';
import ಸಾಯ೦ಸ್ವರೂಪ from '../SayamSwaroopa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
 
test("ಸಾಯ೦ಸ್ವರೂಪ", () => {
  expect(Renderer.create(
    <ಸಾಯ೦ಸ್ವರೂಪ />
  ).toJSON()).toMatchSnapshot();

});