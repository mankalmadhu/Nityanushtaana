import React from 'react';
import ಚಿತ್ರ೦ದೇವಾನಾ೦ from '../ChitramDevanam';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
 
test("ಚಿತ್ರ೦ದೇವಾನಾ೦", () => {
   expect(Renderer.create(
    <ಚಿತ್ರ೦ದೇವಾನಾ೦ />
  ).toJSON()).toMatchSnapshot();

});