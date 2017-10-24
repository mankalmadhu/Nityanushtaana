import React from 'react';
import ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ from '../PratahDishaNamskara';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ />
  ).toJSON()).toMatchSnapshot();

});