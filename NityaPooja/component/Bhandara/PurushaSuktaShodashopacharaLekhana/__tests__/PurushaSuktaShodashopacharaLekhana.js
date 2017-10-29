import React from 'react';
import ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರಲೇಖನ from '../PurushaSuktaShodashopacharaLekhana';
import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../../LekhanaSheershike/LekhanaShershike', () => 'ಲೇಖನಶೀರ್ಷಿಕೆ' );

test("ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರಲೇಖನ", () => {
  expect(Renderer.create(
    <ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರಲೇಖನ />
  ).toJSON()).toMatchSnapshot();

});