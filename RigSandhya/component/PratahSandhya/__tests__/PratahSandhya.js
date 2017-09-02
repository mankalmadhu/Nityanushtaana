import React from 'react';
import ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ from '../PratahSandhya';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta/Sochane/AasanaSoochane', () => 'ಆಸನಸೂಚನೆ' );
jest.mock('../../Ghatta/Aachamaneya/Aachamaneya', () => 'ಆಚಮನೀಯ' );
jest.mock('../../Ghatta/Prokshana/Prokshana', () => 'ಪ್ರೋಕ್ಷಣ' );
jest.mock('../../Ghatta/Sankalpa/PratahSandhyaSankalpa', () => 'ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ' );
jest.mock('../../Ghatta/Marjane/PratahMarjane', () => 'ಪ್ರಾತಃಮಾರ್ಜನೆ' );

test("ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ", () => {
  const pratahSandhya = Renderer.create(
    <ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ />
  ).toJSON();

  expect(pratahSandhya).toMatchSnapshot();

});