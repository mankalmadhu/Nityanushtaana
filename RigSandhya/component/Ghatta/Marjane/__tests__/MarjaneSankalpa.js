import React from 'react';
import ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ from '../MarjaneSankalpa';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ", () => {
  expect(Renderer.create(
    <ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ />
  ).toJSON()).toMatchSnapshot();

});