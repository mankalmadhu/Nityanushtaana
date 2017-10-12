import React from 'react';
import ಚಿತ್ರ೦ದೇವಾನಾ೦ from '../ChitramDevanam';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
 
test("ಚಿತ್ರ೦ದೇವಾನಾ೦", () => {
   expect(Renderer.create(
    <ಚಿತ್ರ೦ದೇವಾನಾ೦ />
  ).toJSON()).toMatchSnapshot();

});