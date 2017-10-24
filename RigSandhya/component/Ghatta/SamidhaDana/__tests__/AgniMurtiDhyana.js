import React from 'react';
import ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ from '../AgniMurtiDhyana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ", () => {
   expect(Renderer.create(
    <ಅಗ್ನಿಮೂರ್ತಿಧ್ಯಾನ />
  ).toJSON()).toMatchSnapshot();

});