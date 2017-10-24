import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಅಭಿಮ೦ತ್ರಣೆ from '../MadhyahnikaAbhimantrane';
import Renderer from 'react-test-renderer';
 
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ", () => {
  expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಅಭಿಮ೦ತ್ರಣೆ />
  ).toJSON()).toMatchSnapshot();

});