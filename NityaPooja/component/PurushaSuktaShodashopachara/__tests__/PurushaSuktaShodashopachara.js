import React from 'react';
import ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ from '../PurushaSuktaShodashopachara';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Bhandara/Shuklambaradharam/Shuklambaradharam',()=>'ಶುಕ್ಲಾ೦ಬರಧರ೦');

test("ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ", () => {
  expect(Renderer.create(
    <ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ />
  ).toJSON()).toMatchSnapshot();

});