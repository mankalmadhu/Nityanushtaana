import React from 'react';
import ಅ೦ಗನ್ಯಾಸ from '../Anganyaasa';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಅ೦ಗನ್ಯಾಸ", () => {
  expect(Renderer.create(
    <ಅ೦ಗನ್ಯಾಸ />
  ).toJSON()).toMatchSnapshot();

});