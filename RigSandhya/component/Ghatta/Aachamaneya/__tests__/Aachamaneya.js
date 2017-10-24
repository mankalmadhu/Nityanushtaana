import React from 'react';
import ಆಚಮನೀಯ from '../Aachamaneya';
import Renderer from 'react-test-renderer';

jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಆಚಮನೀಯ", () => {
   expect(Renderer.create(
    <ಆಚಮನೀಯ />
  ).toJSON()).toMatchSnapshot();

});