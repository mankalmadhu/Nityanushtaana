import React from 'react';
import ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ from '../SankalpaPurvanga';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ", () => {
  expect(Renderer.create(
    <ಸ೦ಕಲ್ಪಪೂರ್ವಾ೦ಗ />
  ).toJSON()).toMatchSnapshot();

});