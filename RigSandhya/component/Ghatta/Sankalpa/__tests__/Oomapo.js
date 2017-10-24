import React from 'react';
import ಓಮಾಪೋ from '../Oomapo';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಓಮಾಪೋ", () => {
  expect(Renderer.create(
    <ಓಮಾಪೋ />
  ).toJSON()).toMatchSnapshot();

});