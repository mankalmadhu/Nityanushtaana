import React from 'react';
import ತಚ್ಚಕ್ಷುಃ from '../Tachaskshuhu';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
 
test("ತಚ್ಚಕ್ಷುಃ", () => {
   expect(Renderer.create(
    <ತಚ್ಚಕ್ಷುಃ />
  ).toJSON()).toMatchSnapshot();

});