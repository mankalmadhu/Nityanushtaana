import React from 'react';
import ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ from '../PratahSamidhaDana';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/Ghatta.vinyasa');
jest.mock('../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../Ghatta/Aachamaneya/Aachamaneya', () => 'ಆಚಮನೀಯ' );
jest.mock('../../Ghatta/Sankalpa/PratahSamidhaDanaSankalpa', () => 'ಪ್ರಾತಸ್ಸಮಿಧಾದಾನಸ೦ಕಲ್ಪ' );
jest.mock('../../Ghatta/SamidhaDana/AgniMurtiDhyana', () => 'ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ' );
jest.mock('../../Ghatta/SamidhaDana/SamidhaDana', () => 'ಸಮಿಧಾದಾನ' );
jest.mock('../../Ghatta/Samarpana/PratahSamarpana', () => 'ಪ್ರಾತಸ್ಸಮರ್ಪಣ' );
jest.mock('../../Ghatta/AparadhaKshamapana/AparadhaKshamapana', () => 'ಅಪರಾಧಕ್ಷಮಾಪಣ' );

test("ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ />
  ).toJSON()).toMatchSnapshot();

});