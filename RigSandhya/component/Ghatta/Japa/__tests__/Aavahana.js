import React from 'react';
import ಆವಾಹನ from '../Aavahana';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಆವಾಹನ", () => {
  expect(Renderer.create(
    <ಆವಾಹನ />
  ).toJSON()).toMatchSnapshot();

});