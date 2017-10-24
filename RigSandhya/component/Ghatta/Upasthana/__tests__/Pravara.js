import React from 'react';
import ಪ್ರವರ from '../Pravara';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಪ್ರವರ", () => {
   expect(Renderer.create(
    <ಪ್ರವರ />
  ).toJSON()).toMatchSnapshot();

});