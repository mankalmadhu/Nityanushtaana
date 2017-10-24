import React from 'react';
import ಉದುತ್ಯ೦ from '../Udutyam';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
 
test("ಉದುತ್ಯ೦", () => {
   expect(Renderer.create(
    <ಉದುತ್ಯ೦ />
  ).toJSON()).toMatchSnapshot();

});