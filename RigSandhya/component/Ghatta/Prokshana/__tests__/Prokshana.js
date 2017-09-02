import React from 'react';
import ಪ್ರೋಕ್ಷಣ from '../Prokshana';
import Renderer from 'react-test-renderer';

test("ಪ್ರೋಕ್ಷಣ", () => {
  const prokshana = Renderer.create(
    <ಪ್ರೋಕ್ಷಣ />
  ).toJSON();

  expect(prokshana).toMatchSnapshot();

});