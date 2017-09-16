import React from 'react';
import ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ from '../PratahSandhya';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/Sochane/AasanaSoochane', () => 'ಆಸನಸೂಚನೆ' );
jest.mock('../../Ghatta/Aachamaneya/Aachamaneya', () => 'ಆಚಮನೀಯ' );
jest.mock('../../Ghatta/Prokshana/Prokshana', () => 'ಪ್ರೋಕ್ಷಣ' );
jest.mock('../../Ghatta/Sankalpa/PratahSandhyaSankalpa', () => 'ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ' );
jest.mock('../../Ghatta/Marjane/PratahMarjane', () => 'ಪ್ರಾತಃಮಾರ್ಜನೆ' );
jest.mock('../../Ghatta/DwiteyaMarjane/DwiteyaMarjane', () => 'ದ್ವಿತೀಯಮಾರ್ಜನೆ' );
jest.mock('../../Ghatta/DwiteyaMarjane/Visarjane', () => 'ವಿಸರ್ಜನೆ' );

test("ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ />
  ).toJSON()).toMatchSnapshot();

});