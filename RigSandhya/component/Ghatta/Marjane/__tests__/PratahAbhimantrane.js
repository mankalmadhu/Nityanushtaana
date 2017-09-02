import React from 'react';
import ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ from '../Marjane';
import Renderer from 'react-test-renderer';

test("ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ", () => {
  const pratahAbhimantrane = Renderer.create(
    <ಪ್ರಾತಃಅಭಿಮ೦ತ್ರಣೆ />
  ).toJSON();

  expect(pratahAbhimantrane).toMatchSnapshot();

});