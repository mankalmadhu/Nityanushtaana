import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಸ್ವರೂಪ from '../MadhyahnikaSwaroopa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
 
test("ಮಾಧ್ಯಾಹ್ನಿಕಸ್ವರೂಪ", () => {
  expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಸ್ವರೂಪ />
  ).toJSON()).toMatchSnapshot();

});