import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಅರ್ಘ್ಯ from '../MadhyahnikaArghyaPradana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../Gayatri/Trihruti',()=>'ತ್ರಿಹೃತಿ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../Sankalpa/Oomapo',()=>'ಓಮಾಪೋ');
jest.mock('../HamsaSuchishat',()=>'ಹ೦ಸಶ್ಶುಚಿಷತ್');
jest.mock('../Aakrushnena',()=>'ಆಕೃಷ್ಣೇನ');
jest.mock('../KalaTeetaArgyaPradana',()=>'ಕಾಲಾತೀತಅರ್ಘ್ಯ');

test("ಮಾಧ್ಯಾಹ್ನಿಕಅರ್ಘ್ಯ", () => {
   expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಅರ್ಘ್ಯ />
  ).toJSON()).toMatchSnapshot();

});