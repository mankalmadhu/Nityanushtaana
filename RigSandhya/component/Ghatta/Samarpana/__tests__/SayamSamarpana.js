import React from 'react';
import ಸಾಯ೦ಸಮರ್ಪಣ from '../SayamSamarpana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಸಾಯ೦ಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಸಾಯ೦ಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});