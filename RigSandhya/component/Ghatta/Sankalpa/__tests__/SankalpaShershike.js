import React from 'react';
import ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ from '../SankalpaShershike';
import Renderer from 'react-test-renderer';

test("ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ", () => {
  const sankalpaShershike = Renderer.create(
    <ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ />
  ).toJSON();

  expect(sankalpaShershike).toMatchSnapshot();

});