import React from 'react';
import ವ್ಯಾಹೃತಿ from '../Vyahruti';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ವ್ಯಾಹೃತಿ", () => {
   expect(Renderer.create(
    <ವ್ಯಾಹೃತಿ />
  ).toJSON()).toMatchSnapshot();

});