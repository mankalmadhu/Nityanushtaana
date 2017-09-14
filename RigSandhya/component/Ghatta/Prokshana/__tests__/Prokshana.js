import React from 'react';
import ಪ್ರೋಕ್ಷಣ from '../Prokshana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರೋಕ್ಷಣ", () => {
  expect(Renderer.create(
    <ಪ್ರೋಕ್ಷಣ />
  ).toJSON()).toMatchSnapshot();

});