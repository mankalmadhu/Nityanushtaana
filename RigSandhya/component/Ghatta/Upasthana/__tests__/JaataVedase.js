import React from 'react';
import ಜಾತವೇದಸೇ from '../JaataVedase';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಜಾತವೇದಸೇ", () => {
   expect(Renderer.create(
    <ಜಾತವೇದಸೇ />
  ).toJSON()).toMatchSnapshot();

});