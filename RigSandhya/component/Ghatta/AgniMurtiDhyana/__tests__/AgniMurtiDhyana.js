import React from 'react';
import ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ from '../AgniMurtiDhyana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ", () => {
   expect(Renderer.create(
    <ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ />
  ).toJSON()).toMatchSnapshot();

});