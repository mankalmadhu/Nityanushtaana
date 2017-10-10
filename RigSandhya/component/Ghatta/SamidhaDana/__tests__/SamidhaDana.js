import React from 'react';
import ಸಮಿಧಾದಾನ from '../SamidhaDana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಸಮಿಧಾದಾನ", () => {
   expect(Renderer.create(
    <ಸಮಿಧಾದಾನ />
  ).toJSON()).toMatchSnapshot();

});