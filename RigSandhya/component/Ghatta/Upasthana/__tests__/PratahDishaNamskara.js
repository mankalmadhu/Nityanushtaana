import React from 'react';
import ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ from '../PratahDishaNamskara';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರ್ದಿಶಾನಮಸ್ಕಾರ />
  ).toJSON()).toMatchSnapshot();

});