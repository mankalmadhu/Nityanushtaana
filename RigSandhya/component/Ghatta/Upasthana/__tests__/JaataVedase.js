import React from 'react';
import ಜಾತವೇದಸೇ from '../JaataVedase';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಜಾತವೇದಸೇ", () => {
   expect(Renderer.create(
    <ಜಾತವೇದಸೇ />
  ).toJSON()).toMatchSnapshot();

});