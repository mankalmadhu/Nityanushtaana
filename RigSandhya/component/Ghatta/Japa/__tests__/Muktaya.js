import React from 'react';
import ಮುಕ್ತಾಯ from '../Muktaya';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಮುಕ್ತಾಯ", () => {
  expect(Renderer.create(
    <ಮುಕ್ತಾಯ />
  ).toJSON()).toMatchSnapshot();

});