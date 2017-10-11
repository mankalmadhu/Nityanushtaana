import React from 'react';
import ರಕ್ಷಾಧಾರಣ from '../RakshaDharana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ರಕ್ಷಾಧಾರಣ", () => {
   expect(Renderer.create(
    <ರಕ್ಷಾಧಾರಣ />
  ).toJSON()).toMatchSnapshot();

});