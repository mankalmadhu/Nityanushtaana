import React from 'react';
import ಸಾಯಮುಪಸ್ಥಾನ from '../SayamUpasthana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../JaataVedase',()=>'ಜಾತವೇದಸೇ');
jest.mock('../Tachayo',()=>'ತಚ್ಛ೦ಯೋ');
jest.mock('../NamoBramhane',()=>'ನಮೋಬ್ರಹ್ಮಣೇ');
jest.mock('../SayamDishaNamskara',()=>'ಸಾಯ೦ದಿಶಾನಮಸ್ಕಾರ');
jest.mock('../DevataNamskara',()=>'ದೇವತಾನಮಸ್ಕಾರ');
jest.mock('../Niragamana',()=>'ನಿರ್ಗಮನ');
jest.mock('../Pravara',()=>'ಪ್ರವರ');
jest.mock('../AasatyaLokaat',()=>'ಆಸತ್ಯಲೋಕಾತ್');

test("ಸಾಯಮುಪಸ್ಥಾನ", () => {
   expect(Renderer.create(
    <ಸಾಯಮುಪಸ್ಥಾನ />
  ).toJSON()).toMatchSnapshot();

});