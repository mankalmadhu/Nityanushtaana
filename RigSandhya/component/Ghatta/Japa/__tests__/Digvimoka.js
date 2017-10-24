import React from 'react';
import ದಿಗ್ವಿಮೋಕ from '../Digvimoka';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya', () => 'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ದಿಗ್ವಿಮೋಕಃ", () => {
  expect(Renderer.create(
    <ದಿಗ್ವಿಮೋಕ />
  ).toJSON()).toMatchSnapshot();

});