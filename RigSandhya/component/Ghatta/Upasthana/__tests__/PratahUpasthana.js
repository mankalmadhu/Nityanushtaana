import React from 'react';
import ಪ್ರಾತರುಪಸ್ಥಾನ from '../PratahUpasthana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../JaataVedase',()=>'ಜಾತವೇದಸೇ');
jest.mock('../Tachayo',()=>'ತಚ್ಛ೦ಯೋ');
jest.mock('../NamoBramhane',()=>'ನಮೋಬ್ರಹ್ಮಣೇ');
jest.mock('../PratahDishaNamskara',()=>'ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ');
jest.mock('../DevataNamskara',()=>'ದೇವತಾನಮಸ್ಕಾರ');
jest.mock('../Niragamana',()=>'ನಿರ್ಗಮನ');
jest.mock('../Pravara',()=>'ಪ್ರವರ');
jest.mock('../AasatyaLokaat',()=>'ಆಸತ್ಯಲೋಕಾತ್');

test("ಪ್ರಾತರುಪಸ್ಥಾನ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರುಪಸ್ಥಾನ />
  ).toJSON()).toMatchSnapshot();

});