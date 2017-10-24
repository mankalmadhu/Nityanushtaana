import React from 'react';
import ಉಪನಯನಕಾರಿಕಾ from '../UpanayanaKarika';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/UpanayanaKarikaMantra/UpanayanaKarikaMantra',()=>'ಉಪನಯನಕಾರಿಕಾಮ೦ತ್ರ');

test("ಉಪನಯನಕಾರಿಕಾ", () => {
  expect(Renderer.create(
    <ಉಪನಯನಕಾರಿಕಾ />
  ).toJSON()).toMatchSnapshot();

});