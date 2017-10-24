import React from 'react';
import ನಮೋಬ್ರಹ್ಮಣೇ from '../NamoBramhane';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ನಮೋಬ್ರಹ್ಮಣೇ", () => {
   expect(Renderer.create(
    <ನಮೋಬ್ರಹ್ಮಣೇ />
  ).toJSON()).toMatchSnapshot();

});