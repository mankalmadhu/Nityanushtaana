import React from 'react';
import ಉಪನಯನಕಾರಿಕಾಮ೦ತ್ರ from '../UpanayanaKarikaMantra';
import Renderer from 'react-test-renderer';
 


jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಉಪನಯನಕಾರಿಕಾಮ೦ತ್ರ", () => {
   expect(Renderer.create(
    <ಉಪನಯನಕಾರಿಕಾಮ೦ತ್ರ />
  ).toJSON()).toMatchSnapshot();

});