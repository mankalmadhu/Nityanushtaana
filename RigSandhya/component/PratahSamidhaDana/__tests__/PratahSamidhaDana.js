import React from 'react';
import ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ from '../PratahSamidhaDana';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/Aachamaneya/Aachamaneya', () => 'ಆಚಮನೀಯ' );
jest.mock('../../Ghatta/Sankalpa/PratahSamidhaDanaSankalpa', () => 'ಪ್ರಾತಸ್ಸಮಿಧಾದಾನಸ೦ಕಲ್ಪ' );
jest.mock('../../Ghatta/SamidhaDana/AgniMurtiDhyana', () => 'ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ' );
jest.mock('../../Ghatta/SamidhaDana/SamidhaDana', () => 'ಸಮಿಧಾದಾನ' );
jest.mock('../../Ghatta/SamidhaDana/AgniUpasthana', () => 'ಅಗ್ನ್ಯುಪಸ್ಥಾನ' );
jest.mock('../../Ghatta/SamidhaDana/RakshaDharana', () => 'ರಕ್ಷಾಧಾರಣ' );
jest.mock('../../Ghatta/SamidhaDana/AgniPrarthane', () => 'ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ' );
jest.mock('../../Ghatta/SamidhaDana/PunahPuja', () => 'ಪುನಃಪೂಜಾ' );
jest.mock('../../Ghatta/Upasthana/Pravara', () => 'ಪ್ರವರ' );
jest.mock('../../Ghatta/Samarpana/PratahSamidhaDanaSamarpana', () => 'ಪ್ರಾತಸ್ಸಮಿಧಾದಾನಸಮರ್ಪಣ' );
jest.mock('../../Ghatta/AparadhaKshamapana/AparadhaKshamapana', () => 'ಅಪರಾಧಕ್ಷಮಾಪಣ' );
jest.mock('../../Ghatta/Sochane/SamidhaDanaAasanaSochane', () => 'ಸಮಿಧಾದಾನಆಸನಸೂಚನೆ' );

test("ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ />
  ).toJSON()).toMatchSnapshot();

});