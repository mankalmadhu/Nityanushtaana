import React from 'react';
import ಪ್ರಾತಃಮಾರ್ಜನೆ from '../PratahMarjane';
import Renderer from 'react-test-renderer';

jest.mock('../Marjane', () => 'ಮಾರ್ಜನೆ' );
jest.mock('../PratahAbhimantrane', () => 'ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ' );
jest.mock('../MarjaneSankalpa', () => 'ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ' );

test("ಪ್ರಾತಃಮಾರ್ಜನೆ", () => {
  expect(Renderer.create(
    <ಪ್ರಾತಃಮಾರ್ಜನೆ />
  ).toJSON()).toMatchSnapshot();

});