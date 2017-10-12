import React from 'react';
import ಆಕೃಷ್ಣೇನ from '../Aakrushnena';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಆಕೃಷ್ಣೇನ", () => {
  expect(Renderer.create(
    <ಆಕೃಷ್ಣೇನ />
  ).toJSON()).toMatchSnapshot();

});