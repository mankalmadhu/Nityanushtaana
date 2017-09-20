import React from 'react';
import ಅ೦ಗನ್ಯಾಸ from '../Anganyaasa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');

test("ಅ೦ಗನ್ಯಾಸ", () => {
  expect(Renderer.create(
    <ಅ೦ಗನ್ಯಾಸ />
  ).toJSON()).toMatchSnapshot();

});