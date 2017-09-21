import React from 'react';
import ದಿಗ್ವಿಮೋಕ from '../Digvimoka';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');

test("ದಿಗ್ವಿಮೋಕಃ", () => {
  expect(Renderer.create(
    <ದಿಗ್ವಿಮೋಕ />
  ).toJSON()).toMatchSnapshot();

});