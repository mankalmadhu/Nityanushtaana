import React from 'react';
import ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ from '../SankalpaShershike';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ", () => {

  expect(Renderer.create(
    <ಸ೦ಕಲ್ಪಶೀರ್ಷಿಕೆ />
  ).toJSON()).toMatchSnapshot();

});