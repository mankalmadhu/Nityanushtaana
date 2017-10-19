import React from 'react';
import ಜಪ from '../Japa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../Gayatri/Trihruti', () => 'ತ್ರಿಹೃತಿ');

test("ಜಪ", () => {
  expect(Renderer.create(
    <ಜಪ />
  ).toJSON()).toMatchSnapshot();

});