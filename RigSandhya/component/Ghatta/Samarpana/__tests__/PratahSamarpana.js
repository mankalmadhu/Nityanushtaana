import React from 'react';
import ಪ್ರಾತಸ್ಸಮರ್ಪಣ from '../PratahSamarpana';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಪ್ರಾತಸ್ಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತಸ್ಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});