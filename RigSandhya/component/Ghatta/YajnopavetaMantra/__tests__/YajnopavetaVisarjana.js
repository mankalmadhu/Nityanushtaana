import React from 'react';
import ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ from '../YajnopavetaVisarjana';
import Renderer from 'react-test-renderer';
 
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ", () => {
   expect(Renderer.create(
    <ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ />
  ).toJSON()).toMatchSnapshot();

});