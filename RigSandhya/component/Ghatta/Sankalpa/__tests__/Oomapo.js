import React from 'react';
import ಓಮಾಪೋ from '../Oomapo';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಓಮಾಪೋ", () => {
  expect(Renderer.create(
    <ಓಮಾಪೋ />
  ).toJSON()).toMatchSnapshot();

});