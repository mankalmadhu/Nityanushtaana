import React from 'react';
import ಮ೦ತ್ರಾರ್ಥ from '../Mantrartha';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');

test("ಮ೦ತ್ರಾರ್ಥ", () => {
  expect(Renderer.create(
    <ಮ೦ತ್ರಾರ್ಥ />
  ).toJSON()).toMatchSnapshot();

});