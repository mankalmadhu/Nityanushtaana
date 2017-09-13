import React from 'react';
import ಆಸನಸೂಚನೆ from '../AasanaSoochane';
import Renderer from 'react-test-renderer';
import ವಿಷಯ from '../../../Vishaya/Vishaya';

jest.mock('../../Ghatta.vinyasa',()=>{return {ghattaShershike:'ghattaShershike'}});
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಆಸನಸೂಚನೆ" , () => {
  const aasanaSochane = Renderer.create(
    <ಆಸನಸೂಚನೆ/>
   ).toJSON();

  expect(aasanaSochane).toMatchSnapshot();

});