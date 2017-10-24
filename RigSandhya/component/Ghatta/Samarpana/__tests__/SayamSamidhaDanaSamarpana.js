import React from 'react';
import ಸಾಯ೦ಸಮಿಧಾದಾನಸಮರ್ಪಣ from '../SayamSamidhaDanaSamarpana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಸಾಯ೦ಸಮಿಧಾದಾನಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಸಾಯ೦ಸಮಿಧಾದಾನಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});