import React from 'react';
import ಪ್ರವರ from '../Pravara';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರವರ", () => {
   expect(Renderer.create(
    <ಪ್ರವರ />
  ).toJSON()).toMatchSnapshot();

});