import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ from '../MadhyahnikaSamarpana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});