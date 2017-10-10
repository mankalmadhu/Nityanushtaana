import React from 'react';
import ನಿರ್ಗಮನ from '../Niragamana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ನಿರ್ಗಮನ", () => {
   expect(Renderer.create(
    <ನಿರ್ಗಮನ />
  ).toJSON()).toMatchSnapshot();

});