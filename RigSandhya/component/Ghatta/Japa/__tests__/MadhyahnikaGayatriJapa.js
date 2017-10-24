import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಗಾಯತ್ರೀ from '../MadhyahnikaGayatriJapa';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../Gayatri/Trihruti', () => 'ತ್ರಿಹೃತಿ');
jest.mock('../../Sankalpa/MadhyahnikaJapaSankalpa', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಜಪಸ೦ಕಲ್ಪ');
jest.mock('../Aavahana', () => 'ಆವಾಹನ');
jest.mock('../Japa', () => 'ಜಪ');
jest.mock('../Karanyaasa', () => 'ಕರನ್ಯಾಸ');
jest.mock('../Anganyaasa', () => 'ಅ೦ಗನ್ಯಾಸ');
jest.mock('../Digbhanda', () => 'ದಿಗ್ಬ೦ಧನ');
jest.mock('../MadhyahnikaSwaroopa', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಸ್ವರೂಪ');
jest.mock('../Mantrartha', () => 'ಮ೦ತ್ರಾರ್ಥ');
jest.mock('../Digvimoka', () => 'ದಿಗ್ವಿಮೋಕ');
jest.mock('../Muktaya', () => 'ಮುಕ್ತಾಯ');
 
test("ಮಾಧ್ಯಾಹ್ನಿಕಗಾಯತ್ರೀ", () => {
  expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಗಾಯತ್ರೀ />
  ).toJSON()).toMatchSnapshot();

}); 