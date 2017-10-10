import React from 'react';
import ಅಪರಾಧಕ್ಷಮಾಪಣ from '../AparadhaKshamapana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಅಪರಾಧಕ್ಷಮಾಪಣ", () => {
   expect(Renderer.create(
    <ಅಪರಾಧಕ್ಷಮಾಪಣ />
  ).toJSON()).toMatchSnapshot();

});