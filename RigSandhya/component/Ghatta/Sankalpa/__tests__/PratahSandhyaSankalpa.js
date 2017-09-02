import React from 'react';
import ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ from '../PratahSandhyaSankalpa';
import Renderer from 'react-test-renderer';

test("ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ", () => {
  const pratahSandhyaSankalpa = Renderer.create(
    <ಪ್ರಾತಃಸ೦ಧ್ಯಾಸ೦ಕಲ್ಪ />
  ).toJSON();

  expect(pratahSandhyaSankalpa).toMatchSnapshot();

});