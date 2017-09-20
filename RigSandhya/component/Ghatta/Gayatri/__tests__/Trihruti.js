import React from 'react';
import ತ್ರಿಹೃತಿ from '../Trihruti';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ತ್ರಿಹೃತಿ", () => {
   expect(Renderer.create(
    <ತ್ರಿಹೃತಿ />
  ).toJSON()).toMatchSnapshot();

});