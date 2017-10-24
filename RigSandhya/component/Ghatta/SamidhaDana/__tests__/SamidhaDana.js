import React from 'react';
import ಸಮಿಧಾದಾನ from '../SamidhaDana';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಸಮಿಧಾದಾನ", () => {
   expect(Renderer.create(
    <ಸಮಿಧಾದಾನ />
  ).toJSON()).toMatchSnapshot();

});