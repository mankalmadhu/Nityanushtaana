import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ from '../MadhyahnikaSamarpana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರಾತಸ್ಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});