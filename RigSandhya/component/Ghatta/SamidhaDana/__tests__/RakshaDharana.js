import React from 'react';
import ರಕ್ಷಾಧಾರಣ from '../RakshaDharana';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ರಕ್ಷಾಧಾರಣ", () => {
   expect(Renderer.create(
    <ರಕ್ಷಾಧಾರಣ />
  ).toJSON()).toMatchSnapshot();

});