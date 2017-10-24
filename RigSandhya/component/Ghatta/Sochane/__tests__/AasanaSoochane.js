import React from 'react';
import ಆಸನಸೂಚನೆ from '../AasanaSoochane';
import Renderer from 'react-test-renderer';

jest.mock('../../../Vishaya/SheershikeVishaya',()=>'ಶೀರ್ಷಿಕೆವಿಷಯ');

test("ಆಸನಸೂಚನೆ" , () => {
  const aasanaSochane = Renderer.create(
    <ಆಸನಸೂಚನೆ/>
   ).toJSON();

  expect(aasanaSochane).toMatchSnapshot();

});