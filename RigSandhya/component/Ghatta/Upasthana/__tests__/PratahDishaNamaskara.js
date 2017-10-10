import React from 'react';
import ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕರ from '../PratahDishaNamskara';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕರ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕರ />
  ).toJSON()).toMatchSnapshot();

});