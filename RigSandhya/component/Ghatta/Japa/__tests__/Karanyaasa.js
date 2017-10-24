import React from 'react';
import ಕರನ್ಯಾಸ from '../Karanyaasa';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಕರನ್ಯಾಸ", () => {
  expect(Renderer.create(
    <ಕರನ್ಯಾಸ />
  ).toJSON()).toMatchSnapshot();

});