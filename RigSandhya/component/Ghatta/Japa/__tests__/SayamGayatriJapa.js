import React from 'react';
import ಸಾಯ೦ಗಾಯತ್ರೀ from '../SayamGayatriJapa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../Gayatri/Trihruti', () => 'ತ್ರಿಹೃತಿ');
jest.mock('../../Sankalpa/SayamJapaSankalpa', () => 'ಸಾಯ೦ಜಪಸ೦ಕಲ್ಪ');
jest.mock('../Aavahana', () => 'ಆವಾಹನ');
jest.mock('../../Gayatri/GayatriMantra', () => 'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../Karanyaasa', () => 'ಕರನ್ಯಾಸ');
jest.mock('../Anganyaasa', () => 'ಅ೦ಗನ್ಯಾಸ');
jest.mock('../Digbhanda', () => 'ದಿಗ್ಬ೦ಧನ');
jest.mock('../SayamSwaroopa', () => 'ಸಾಯ೦ಸ್ವರೂಪ');
jest.mock('../Mantrartha', () => 'ಮ೦ತ್ರಾರ್ಥ');
jest.mock('../Digvimoka', () => 'ದಿಗ್ವಿಮೋಕ');
jest.mock('../Muktaya', () => 'ಮುಕ್ತಾಯ');
 
test("ಸಾಯ೦ಗಾಯತ್ರೀ", () => {
  expect(Renderer.create(
    <ಸಾಯ೦ಗಾಯತ್ರೀ />
  ).toJSON()).toMatchSnapshot();

}); 