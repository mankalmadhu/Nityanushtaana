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
jest.mock('../../Bhandara/VastraYugma/VastraYugma',()=>'ವಸ್ತ್ರಯುಗ್ಮ');
jest.mock('../../Bhandara/Upaveta/Upaveta',()=>'ಉಪವೀತ');
jest.mock('../../Bhandara/Gandha/Gandha',()=>'ಗ೦ಧ');
jest.mock('../../Bhandara/Akshate/Akshate',()=>'ಆಕ್ಷತೆ');
jest.mock('../../Bhandara/Pushpa/Pushpa',()=>'ಪುಷ್ಪ');
jest.mock('../../Bhandara/Dhupa/Dhupa',()=>'ಧೂಪ');
jest.mock('../../Bhandara/Deepa/Deepa',()=>'ದೀಪ');
jest.mock('../../Bhandara/Naivedya/Naivedya',()=>'ನೈವೇದ್ಯ');
jest.mock('../../Bhandara/Tambula/Tambula',()=>'ತಾ೦ಬೂಲ');
jest.mock('../../Bhandara/Neerajana/Neerajana',()=>'ನೀರಾಜನ');
jest.mock('../../Bhandara/MantraPushpa/MantraPushpa',()=>'ಮ೦ತ್ರಪುಷ್ಪ');
jest.mock('../../Bhandara/Namaskara/Namaskara',()=>'ನಮಸ್ಕಾರ');
jest.mock('../../Bhandara/Punararghya/Punararghya',()=>'ಪುನರ್ರಘ್ಯ');
jest.mock('../../Bhandara/Prarthana/Prarthana',()=>'ಪ್ರಾರ್ಥನ');
jest.mock('../../Bhandara/PunahPuja/PunahPuja',()=>'ಪುನಃಪೂಜಾ');
jest.mock('../../Bhandara/AparadhaKshamapana/AparadhaKshamapana',()=>'ಅಪರಾಧಕ್ಷಮಾಪಣ');


test("ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ", () => {
  expect(Renderer.create(
    <ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ />
  ).toJSON()).toMatchSnapshot();

});