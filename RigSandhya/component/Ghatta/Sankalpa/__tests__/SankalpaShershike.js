import React from 'react';
import ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ from '../SankalpaShershike';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ", () => {

  expect(Renderer.create(
    <ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ />
  ).toJSON()).toMatchSnapshot();

});