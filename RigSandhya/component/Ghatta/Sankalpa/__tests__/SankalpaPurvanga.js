import React from 'react';
import ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ from '../SankalpaPurvanga';
import Renderer from 'react-test-renderer';

test("ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ", () => {
  const sankalpaPurvanga = Renderer.create(
    <ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ />
  ).toJSON();

  expect(sankalpaPurvanga).toMatchSnapshot();

});