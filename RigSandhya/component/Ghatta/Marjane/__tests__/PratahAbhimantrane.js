import React from 'react';
import ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ from '../PratahAbhimantrane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ />
  ).toJSON()).toMatchSnapshot();

});