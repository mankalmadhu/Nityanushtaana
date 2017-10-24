import React from 'react';
import ಪುನಃಪೂಜಾ from '../PunahPuja';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../Gayatri/Trihruti', () => 'ತ್ರಿಹೃತಿ');

test("ಪುನಃಪೂಜಾ", () => {
   expect(Renderer.create(
    <ಪುನಃಪೂಜಾ />
  ).toJSON()).toMatchSnapshot();

});