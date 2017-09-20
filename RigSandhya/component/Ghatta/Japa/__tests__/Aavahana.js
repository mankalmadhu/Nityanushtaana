import React from 'react';
import ಆವಾಹನ from '../Aavahana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');

test("ಆವಾಹನ", () => {
  expect(Renderer.create(
    <ಆವಾಹನ />
  ).toJSON()).toMatchSnapshot();

});