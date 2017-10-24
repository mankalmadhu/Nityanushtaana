import React from 'react';
import ಪ್ರಾತಃಗಾಯತ್ರೀ from '../PratahGayatriJapa';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../Gayatri/Trihruti', () => 'ತ್ರಿಹೃತಿ');
jest.mock('../../Sankalpa/PratahJapaSankalpa', () => 'ಪ್ರಾತಃಜಪಸ೦ಕಲ್ಪ');
jest.mock('../Aavahana', () => 'ಆವಾಹನ');
jest.mock('../Japa', () => 'ಜಪ');
jest.mock('../Karanyaasa', () => 'ಕರನ್ಯಾಸ');
jest.mock('../Anganyaasa', () => 'ಅ೦ಗನ್ಯಾಸ');
jest.mock('../Digbhanda', () => 'ದಿಗ್ಬ೦ಧನ');
jest.mock('../PratahSwaroopa', () => 'ಪ್ರಾತಃಸ್ವರೂಪ');
jest.mock('../Mantrartha', () => 'ಮ೦ತ್ರಾರ್ಥ');
jest.mock('../Digvimoka', () => 'ದಿಗ್ವಿಮೋಕ');
jest.mock('../Muktaya', () => 'ಮುಕ್ತಾಯ');
 
test("ಪ್ರಾತಃಗಾಯತ್ರೀ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಃಗಾಯತ್ರೀ />
  ).toJSON()).toMatchSnapshot();

}); 