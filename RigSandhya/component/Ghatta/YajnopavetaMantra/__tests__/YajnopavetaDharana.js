import React from 'react';
import ಯಜ್ಞೋಪವೀತಧಾರಣ from '../YajnopavetaDharana';
import Renderer from 'react-test-renderer';
 
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಯಜ್ಞೋಪವೀತಧಾರಣ", () => {
   expect(Renderer.create(
    <ಯಜ್ಞೋಪವೀತಧಾರಣ />
  ).toJSON()).toMatchSnapshot();

});