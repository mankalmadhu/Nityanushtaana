import React from 'react';
import ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ from '../PurushaSuktaShodashopachara';
import Renderer from 'react-test-renderer';


jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Bhandara/Aachamaneya/Aachamaneya',()=>'ಆಚಮನೀಯ');
jest.mock('../../Bhandara/Sochane/AachaManeyaSoochane',()=>'ಆಚಮನೀಯಸೂಚನೆ');
jest.mock('../../Bhandara/Sochane/DevaPujaAasnaSochane',()=>'ದೇವಪೂಜಾಆಸನಸೂಚನೆ');
jest.mock('../../Bhandara/AdiPrarthane/AdiPrarthane',()=>'ಆದಿಪ್ರಾರ್ಥನೆ');

test("ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ", () => {
  expect(Renderer.create(
    <ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ />
  ).toJSON()).toMatchSnapshot();

});