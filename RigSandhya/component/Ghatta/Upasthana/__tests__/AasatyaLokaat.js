import React from 'react';
import ಆಸತ್ಯಲೋಕಾತ್ from '../AasatyaLokaat';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಆಸತ್ಯಲೋಕಾತ್", () => {
   expect(Renderer.create(
    <ಆಸತ್ಯಲೋಕಾತ್ />
  ).toJSON()).toMatchSnapshot();

});