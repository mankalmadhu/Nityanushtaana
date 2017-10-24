import React from 'react';
import ಯಜ್ಞೋಪವೀತಧಾರಣ from '../YajnopavetaDharana';
import Renderer from 'react-test-renderer';
 
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');

test("ಯಜ್ಞೋಪವೀತಧಾರಣ", () => {
   expect(Renderer.create(
    <ಯಜ್ಞೋಪವೀತಧಾರಣ />
  ).toJSON()).toMatchSnapshot();

});