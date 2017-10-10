import React from 'react';
import ನಮೋಬ್ರಹ್ಮಣೇ from '../NamoBramhane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ನಮೋಬ್ರಹ್ಮಣೇ", () => {
   expect(Renderer.create(
    <ನಮೋಬ್ರಹ್ಮಣೇ />
  ).toJSON()).toMatchSnapshot();

});