import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ from '../MadhyahnikaSamarpana';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});