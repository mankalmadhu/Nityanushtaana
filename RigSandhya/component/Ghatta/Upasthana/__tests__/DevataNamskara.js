import React from 'react';
import ದೇವತಾನಮಸ್ಕಾರ from '../DevataNamskara';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ದೇವತಾನಮಸ್ಕಾರ", () => {
   expect(Renderer.create(
    <ದೇವತಾನಮಸ್ಕಾರ />
  ).toJSON()).toMatchSnapshot();

});