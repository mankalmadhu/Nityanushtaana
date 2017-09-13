import React from 'react';
import ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ from '../PratahSandhyaSankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../Gayatri/GayatriMantra', () => 'ಗಾಯತ್ರೀಮ೦ತ್ರ' );
jest.mock('../../Gayatri/Vyahruti', () => 'ವ್ಯಾಹೃತಿ' );
jest.mock('../SankalpaPurvanga', () => 'ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ' );
jest.mock('../SankalpaShershike', () => 'ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ' );
jest.mock('../Oomapo', () => 'ಓಮಾಪೋ' );

test("ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ", () => {
  const pratahSandhyaSankalpa = Renderer.create(
    <ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ />
  ).toJSON();

  expect(pratahSandhyaSankalpa).toMatchSnapshot();

});