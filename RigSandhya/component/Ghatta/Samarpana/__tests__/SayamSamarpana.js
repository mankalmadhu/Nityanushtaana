import React from 'react';
import ಸಾಯ೦ಸಮರ್ಪಣ from '../SayamSamarpana';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಸಾಯ೦ಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಸಾಯ೦ಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});