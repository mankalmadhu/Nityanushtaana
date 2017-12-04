import React from 'react';
import ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ from '../PurushaSuktaShodashopachara';
import Renderer from 'react-test-renderer';


jest.mock('../../Bhandara/PurushaSuktaShodashopacharaLekhana/PurushaSuktaShodashopacharaLekhana', () => 'ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Bhandara/Aachamaneya/Aachamaneya',()=>'ಆಚಮನೀಯ');
jest.mock('../../Bhandara/Sochane/AachaManeyaSoochane',()=>'ಆಚಮನೀಯಸೂಚನೆ');
jest.mock('../../Bhandara/Sochane/DevaPujaAasnaSochane',()=>'ದೇವಪೂಜಾಆಸನಸೂಚನೆ');
jest.mock('../../Bhandara/AdiPrarthane/AdiPrarthane',()=>'ಆದಿಪ್ರಾರ್ಥನೆ');
jest.mock('../../Bhandara/Ghantanaada/Ghantanaada',()=>'ಘ೦ಟಾನಾದ');
jest.mock('../../Bhandara/Aasanavidhi/Aasanavidhi',()=>'ಆಸನವಿಧಿ');
jest.mock('../../Bhandara/Bhoototsarana/Bhoototsarana',()=>'ಭೂತೋತ್ಸರಣ');
jest.mock('../../Bhandara/Sankalpa/Sankalpa',()=>'ಸ೦ಕಲ್ಪ');
jest.mock('../../Bhandara/Kalashaarchane/Kalashaarchane',()=>'ಕಲಶಾರ್ಚನೆ');
jest.mock('../../Bhandara/Shankhapuja/Shankhapuja',()=>'ಶ೦ಖಪೂಜಾ');
jest.mock('../../Bhandara/MahaGanapatiPrarthane/MahaGanapatiPrarthane',()=>'ಮಹಾಗಣಪತಿಪ್ರಾರ್ಥನೆ');
jest.mock('../../Bhandara/Aavahana/Aavahana',()=>'ಧ್ಯಾನಾವಾಹನ');
jest.mock('../../Bhandara/Aasana/Aasana',()=>'ಆಸನ');
jest.mock('../../Bhandara/Padya/Padya',()=>'ಪಾದ್ಯ');
jest.mock('../../Bhandara/UpacharaAchamaneya/UpacharaAchamaneya',()=>'ಉಪಚಾರಆಚಮನೀಯ');
jest.mock('../../Bhandara/MadhuParka/MadhuParka',()=>'ಮಧುಪರ್ಕ');
jest.mock('../../Bhandara/ShudhodakaSnana/ShudhodakaSnana',()=>'ಶುದ್ಧೋದಕಸ್ನಾನ');

test("ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ", () => {
  expect(Renderer.create(
    <ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ />
  ).toJSON()).toMatchSnapshot();

});