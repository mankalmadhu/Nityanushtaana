import React from 'react';
import ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ from '../PratahAbhimantrane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ />
  ).toJSON()).toMatchSnapshot();

});