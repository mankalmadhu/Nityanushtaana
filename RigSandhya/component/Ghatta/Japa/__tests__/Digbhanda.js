import React from 'react';
import ದಿಗ್ಬ೦ಧ from '../Digbhanda';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');

test("ದಿಗ್ಬ೦ಧ", () => {
  expect(Renderer.create(
    <ದಿಗ್ಬ೦ಧ />
  ).toJSON()).toMatchSnapshot();

});