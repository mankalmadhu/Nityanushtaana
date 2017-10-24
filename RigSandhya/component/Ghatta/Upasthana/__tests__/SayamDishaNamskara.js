import React from 'react';
import ಸಾಯ೦ದಿಶಾನಮಸ್ಕಾರ from '../SayamDishaNamskara';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಸಾಯ೦ದಿಶಾನಮಸ್ಕಾರ", () => {
   expect(Renderer.create(
    <ಸಾಯ೦ದಿಶಾನಮಸ್ಕಾರ />
  ).toJSON()).toMatchSnapshot();

});