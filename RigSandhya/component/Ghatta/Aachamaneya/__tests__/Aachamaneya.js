import React from 'react';
import ಆಚಮನೀಯ from '../Aachamaneya';
import Renderer from 'react-test-renderer';

jest.mock('../../../Vishaya/ViniyogaVishaya',()=>'ವಿನಿಯೋಗವಿಷಯ');
jest.mock('../../../Vishaya/SheershikeVishaya',()=>'ಶೀರ್ಷಿಕೆವಿಷಯ');

test("ಆಚಮನೀಯ", () => {
   expect(Renderer.create(
    <ಆಚಮನೀಯ />
  ).toJSON()).toMatchSnapshot();

});