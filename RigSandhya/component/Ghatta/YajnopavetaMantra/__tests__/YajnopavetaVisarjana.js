import React from 'react';
import ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ from '../YajnopavetaVisarjana';
import Renderer from 'react-test-renderer';
 

jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ", () => {
   expect(Renderer.create(
    <ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ />
  ).toJSON()).toMatchSnapshot();

});