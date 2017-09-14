import React from 'react';
import ಆಚಮನೀಯ from '../Aachamaneya';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಆಚಮನೀಯ", () => {
   expect(Renderer.create(
    <ಆಚಮನೀಯ />
  ).toJSON()).toMatchSnapshot();

});