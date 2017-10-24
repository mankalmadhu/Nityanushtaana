import React from 'react';
import ತಚ್ಚಕ್ಷುಃ from '../Tachaskshuhu';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
 
test("ತಚ್ಚಕ್ಷುಃ", () => {
   expect(Renderer.create(
    <ತಚ್ಚಕ್ಷುಃ />
  ).toJSON()).toMatchSnapshot();

});