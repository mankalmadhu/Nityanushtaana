import React from 'react';
import ಪ್ರಾತರರ್ಘ್ಯ from '../PratahArghyaPradana';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../Gayatri/Trihruti',()=>'ತ್ರಿಹೃತಿ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../Sankalpa/Oomapo',()=>'ಓಮಾಪೋ');
jest.mock('../KalaTeetaArgyaPradana',()=>'ಕಾಲಾತೀತಅರ್ಘ್ಯ');

test("ಪ್ರಾತರರ್ಘ್ಯ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರರ್ಘ್ಯ />
  ).toJSON()).toMatchSnapshot();

});