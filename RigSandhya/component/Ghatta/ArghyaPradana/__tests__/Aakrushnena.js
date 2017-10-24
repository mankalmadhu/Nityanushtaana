import React from 'react';
import ಆಕೃಷ್ಣೇನ from '../Aakrushnena';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');

test("ಆಕೃಷ್ಣೇನ", () => {
  expect(Renderer.create(
    <ಆಕೃಷ್ಣೇನ />
  ).toJSON()).toMatchSnapshot();

});