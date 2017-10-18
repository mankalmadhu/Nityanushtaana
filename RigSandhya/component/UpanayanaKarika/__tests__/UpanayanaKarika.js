import React from 'react';
import ಉಪನಯನಕಾರಿಕಾ from '../UpanayanaKarika';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/Ghatta.vinyasa');
jest.mock('../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಉಪನಯನಕಾರಿಕಾ", () => {
  expect(Renderer.create(
    <ಉಪನಯನಕಾರಿಕಾ />
  ).toJSON()).toMatchSnapshot();

});