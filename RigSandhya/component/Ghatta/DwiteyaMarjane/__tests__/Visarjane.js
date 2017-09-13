import React from 'react';
import ವಿಸರ್ಜನೆ from '../Visarjane';
import Renderer from 'react-test-renderer';

test("ವಿಸರ್ಜನೆ", () => {
  const pratahAbhimantrane = Renderer.create(
    <ವಿಸರ್ಜನೆ />
  ).toJSON();

  expect(pratahAbhimantrane).toMatchSnapshot();

});