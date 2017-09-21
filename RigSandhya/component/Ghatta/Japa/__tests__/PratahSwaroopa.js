import React from 'react';
import ಪ್ರಾತಃಸ್ವರೂಪ from '../PratahSwaroopa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
 
test("ಪ್ರಾತಃಸ್ವರೂಪ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಃಸ್ವರೂಪ />
  ).toJSON()).toMatchSnapshot();

});