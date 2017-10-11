import React from 'react';
import ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ from '../AgniPrarthane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ", () => {
   expect(Renderer.create(
    <ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ />
  ).toJSON()).toMatchSnapshot();

});