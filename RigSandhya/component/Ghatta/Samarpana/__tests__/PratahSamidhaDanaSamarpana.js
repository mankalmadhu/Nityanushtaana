import React from 'react';
import ಪ್ರಾತಸ್ಸಮಿಧಾದಾನಸಮರ್ಪಣ from '../PratahSamidhaDanaSamarpana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಪ್ರಾತಸ್ಸಮಿಧಾದಾನಸಮರ್ಪಣ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತಸ್ಸಮಿಧಾದಾನಸಮರ್ಪಣ />
  ).toJSON()).toMatchSnapshot();

});