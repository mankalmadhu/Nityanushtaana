import React from 'react';
import ಪ್ರೀತ್ಯರ್ಥ from '../Preetyartha';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');

test("ಓಮಾಪೋ", () => {
  expect(Renderer.create(
    <ಪ್ರೀತ್ಯರ್ಥ>
      ಉಪಾಸ್ಯೇ
    </ಪ್ರೀತ್ಯರ್ಥ>
  ).toJSON()).toMatchSnapshot();

});