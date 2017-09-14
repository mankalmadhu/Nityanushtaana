import React from 'react';
import ದ್ವಿತೀಯಮಾರ್ಜನೆ from '../DwiteyaMarjane';
import Renderer from 'react-test-renderer';

jest.mock('../../Marjane/Marjane',()=>'ಮಾರ್ಜನೆ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../Gayatri/Vyahruti',()=>'ವ್ಯಾಹೃತಿ');
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ದ್ವಿತೀಯಮಾರ್ಜನೆ", () => {
  const marjane = Renderer.create(
    <ದ್ವಿತೀಯಮಾರ್ಜನೆ />
  ).toJSON();

  expect(marjane).toMatchSnapshot();

});