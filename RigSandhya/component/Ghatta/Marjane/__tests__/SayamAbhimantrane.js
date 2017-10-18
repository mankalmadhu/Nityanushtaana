import React from 'react';
import ಸಾಯ೦ಅಭಿಮ೦ತ್ರಣೆ from '../SayamAbhimantrane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ", () => {
  expect(Renderer.create(
    <ಸಾಯ೦ಅಭಿಮ೦ತ್ರಣೆ />
  ).toJSON()).toMatchSnapshot();

});