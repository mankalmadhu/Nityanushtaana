import React from 'react';
import ಗಾಯತ್ರೀಮ೦ತ್ರ from '../GayatriMantra';
import Renderer from 'react-test-renderer';

test("ಗಾಯತ್ರೀಮ೦ತ್ರ", () => {
  const gayatriMantra = Renderer.create(
    <ಗಾಯತ್ರೀಮ೦ತ್ರ />
  ).toJSON();

  expect(gayatriMantra).toMatchSnapshot();

});