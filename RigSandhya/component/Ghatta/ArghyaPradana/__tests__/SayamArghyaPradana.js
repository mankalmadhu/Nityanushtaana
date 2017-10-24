import React from 'react';
import ಸಾಯಮರ್ಘ್ಯ from '../SayamArghyaPradana';
import Renderer from 'react-test-renderer';
 
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../Gayatri/Trihruti',()=>'ತ್ರಿಹೃತಿ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../Sankalpa/Oomapo',()=>'ಓಮಾಪೋ');
jest.mock('../KalaTeetaArgyaPradana',()=>'ಕಾಲಾತೀತಅರ್ಘ್ಯ');

test("ಸಾಯಮರ್ಘ್ಯ", () => {
   expect(Renderer.create(
    <ಸಾಯಮರ್ಘ್ಯ />
  ).toJSON()).toMatchSnapshot();

});