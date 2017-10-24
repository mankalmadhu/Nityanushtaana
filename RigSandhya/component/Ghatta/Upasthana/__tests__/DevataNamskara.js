import React from 'react';
import ದೇವತಾನಮಸ್ಕಾರ from '../DevataNamskara';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ದೇವತಾನಮಸ್ಕಾರ", () => {
   expect(Renderer.create(
    <ದೇವತಾನಮಸ್ಕಾರ />
  ).toJSON()).toMatchSnapshot();

});