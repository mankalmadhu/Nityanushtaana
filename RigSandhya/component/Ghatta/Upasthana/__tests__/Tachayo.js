import React from 'react';
import ತಚ್ಛ೦ಯೋ from '../Tachayo';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ತಚ್ಛ೦ಯೋ", () => {
   expect(Renderer.create(
    <ತಚ್ಛ೦ಯೋ />
  ).toJSON()).toMatchSnapshot();

});