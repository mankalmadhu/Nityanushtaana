import React from 'react';
import ಪ್ರಾತರ್ರಘ್ಯಸ೦ಕಲ್ಪ from '../PratahArghyaSankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../Gayatri/GayatriMantra', () => 'ಗಾಯತ್ರೀಮ೦ತ್ರ' );
jest.mock('../../Gayatri/Vyahruti', () => 'ವ್ಯಾಹೃತಿ' );
jest.mock('../SankalpaPurvanga', () => 'ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ' );
jest.mock('../SankalpaShershike', () => 'ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ' );
jest.mock('../Preetyartha', () => 'ಪ್ರೀತ್ಯರ್ಥ' );
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../Oomapo', () => 'ಓಮಾಪೋ' );
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ", () => {

  expect(Renderer.create(
    <ಪ್ರಾತರ್ರಘ್ಯಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});