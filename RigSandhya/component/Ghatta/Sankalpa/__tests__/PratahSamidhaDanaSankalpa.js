import React from 'react';
import ಪ್ರಾತಃಸಮಿಧಾದಾನಸ೦ಕಲ್ಪ from '../PratahSamidhaDanaSankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../Gayatri/GayatriMantra', () => 'ಗಾಯತ್ರೀಮ೦ತ್ರ' );
jest.mock('../../Gayatri/Vyahruti', () => 'ವ್ಯಾಹೃತಿ' );
jest.mock('../SankalpaPurvanga', () => 'ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ' );
jest.mock('../SankalpaShershike', () => 'ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ' );
jest.mock('../Preetyartha', () => 'ಪ್ರೀತ್ಯರ್ಥ' );
jest.mock('../Oomapo', () => 'ಓಮಾಪೋ' );



test("ಪ್ರಾತಃಸಮಿಧಾದಾನಸ೦ಕಲ್ಪ", () => {

  expect(Renderer.create(
    <ಪ್ರಾತಃಸಮಿಧಾದಾನಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});