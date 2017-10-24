import React from 'react';
import ಸಾಯ೦ಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ from '../SayamSandhyaSankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../Gayatri/GayatriMantra', () => 'ಗಾಯತ್ರೀಮ೦ತ್ರ' );
jest.mock('../../Gayatri/Vyahruti', () => 'ವ್ಯಾಹೃತಿ' );
jest.mock('../SankalpaPurvanga', () => 'ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ' );
jest.mock('../SankalpaShershike', () => 'ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ' );
jest.mock('../Preetyartha', () => 'ಪ್ರೀತ್ಯರ್ಥ' );
jest.mock('../Oomapo', () => 'ಓಮಾಪೋ' );

jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಸಾಯ೦ಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ", () => {

  expect(Renderer.create(
    <ಸಾಯ೦ಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});