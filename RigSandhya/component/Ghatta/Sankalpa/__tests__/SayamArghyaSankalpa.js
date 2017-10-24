import React from 'react';
import ಸಾಯಮರ್ಘ್ಯಸ೦ಕಲ್ಪ from '../SayamArghyaSankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../Gayatri/GayatriMantra', () => 'ಗಾಯತ್ರೀಮ೦ತ್ರ' );
jest.mock('../../Gayatri/Vyahruti', () => 'ವ್ಯಾಹೃತಿ' );
jest.mock('../SankalpaPurvanga', () => 'ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ' );
jest.mock('../SankalpaShershike', () => 'ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ' );
jest.mock('../Preetyartha', () => 'ಪ್ರೀತ್ಯರ್ಥ' );
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../Oomapo', () => 'ಓಮಾಪೋ' );

jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಸಾಯಮರ್ಘ್ಯಸ೦ಕಲ್ಪ", () => {

  expect(Renderer.create(
    <ಸಾಯಮರ್ಘ್ಯಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});