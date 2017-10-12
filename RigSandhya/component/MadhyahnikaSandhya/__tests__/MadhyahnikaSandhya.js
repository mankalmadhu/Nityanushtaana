import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ from '../MadhyahnikaSandhya';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/Sochane/AasanaSoochane', () => 'ಆಸನಸೂಚನೆ' );
jest.mock('../../Ghatta/Aachamaneya/Aachamaneya', () => 'ಆಚಮನೀಯ' );
jest.mock('../../Ghatta/Prokshana/Prokshana', () => 'ಪ್ರೋಕ್ಷಣ' );
jest.mock('../../Ghatta/Sankalpa/MadhyahnikaSandhyaSankalpa', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ' );
jest.mock('../../Ghatta/Marjane/MadhyahnikaMarjane', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಮಾರ್ಜನೆ' );
jest.mock('../../Ghatta/DwiteyaMarjane/DwiteyaMarjane', () => 'ದ್ವಿತೀಯಮಾರ್ಜನೆ' );
jest.mock('../../Ghatta/DwiteyaMarjane/Visarjane', () => 'ವಿಸರ್ಜನೆ' );
jest.mock('../../Ghatta/Sankalpa/MadhyahnikaArghyaSankalpa', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಅರ್ಘ್ಯಸ೦ಕಲ್ಪ' );
jest.mock('../../Ghatta/ArghyaPradana/MadhyahnikaArghyaPradana', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಅರ್ಘ್ಯ' );
jest.mock('../../Ghatta/Japa/PratahGayatriJapa', () => 'ಪ್ರಾತಃಗಾಯತ್ರೀ' );
jest.mock('../../Ghatta/Upasthana/PratahUpasthana', () => 'ಪ್ರಾತರುಪಸ್ಥಾನ' );
jest.mock('../../Ghatta/Samarpana/PratahSamarpana', () => 'ಪ್ರಾತಸ್ಸಮರ್ಪಣ' );
jest.mock('../../Ghatta/AparadhaKshamapana/AparadhaKshamapana', () => 'ಅಪರಾಧಕ್ಷಮಾಪಣ' );

test("ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ", () => {
  expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ />
  ).toJSON()).toMatchSnapshot();

});