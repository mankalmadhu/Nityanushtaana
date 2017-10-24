import React from 'react';
import ಕಾಲಾತೀತಅರ್ಘ್ಯ from '../KalaTeetaArgyaPradana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../Gayatri/Trihruti',()=>'ತ್ರಿಹೃತಿ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../Sankalpa/Oomapo',()=>'ಓಮಾಪೋ');

test("ಕಾಲಾತೀತಅರ್ಘ್ಯ", () => {
   expect(Renderer.create(
    <ಕಾಲಾತೀತಅರ್ಘ್ಯ />
  ).toJSON()).toMatchSnapshot();
 
});