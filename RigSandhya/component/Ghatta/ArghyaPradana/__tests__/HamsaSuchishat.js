import React from 'react';
import ಹ೦ಸಶ್ಶುಚಿಷತ್ from '../HamsaSuchishat';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಹ೦ಸಶ್ಶುಚಿಷತ್", () => {
  expect(Renderer.create(
    <ಹ೦ಸಶ್ಶುಚಿಷತ್ />
  ).toJSON()).toMatchSnapshot();

});