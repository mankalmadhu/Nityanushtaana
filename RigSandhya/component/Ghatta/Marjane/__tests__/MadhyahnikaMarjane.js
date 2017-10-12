import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕಮಾರ್ಜನೆ from '../MadhyahnikaMarjane';
import Renderer from 'react-test-renderer';

jest.mock('../Marjane', () => 'ಮಾರ್ಜನೆ' );
jest.mock('../MadhyahnikaAbhimantrane', () => 'ಮಾಧ್ಯಾಹ್ನಿಕಅಭಿಮ೦ತ್ರಣೆ' );
jest.mock('../MarjaneSankalpa', () => 'ಮಾರ್ಜನೆಸ೦ಕಲ್ಪ' );

test("ಪ್ರಾತಃಮಾರ್ಜನೆ", () => {
  expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕಮಾರ್ಜನೆ />
  ).toJSON()).toMatchSnapshot();

});