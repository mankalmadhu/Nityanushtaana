import React from 'react';
import ಸಾಯ೦ಮಾರ್ಜನೆ from '../SayamMarjane';
import Renderer from 'react-test-renderer';

jest.mock('../Marjane', () => 'ಮಾರ್ಜನೆ' );
jest.mock('../SayamAbhimantrane', () => 'ಸಾಯ೦ಅಭಿಮ೦ತ್ರಣೆ' );
jest.mock('../MarjaneSankalpa', () => 'ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ' );

test("ಪ್ರಾತಃಮಾರ್ಜನೆ", () => {
  expect(Renderer.create(
    <ಸಾಯ೦ಮಾರ್ಜನೆ />
  ).toJSON()).toMatchSnapshot();

});