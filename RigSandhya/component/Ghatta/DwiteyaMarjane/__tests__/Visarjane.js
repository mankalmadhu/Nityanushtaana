import React from 'react';
import ವಿಸರ್ಜನೆ from '../Visarjane';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ವಿಸರ್ಜನೆ", () => {
    expect(Renderer.create(
      <ವಿಸರ್ಜನೆ />
    ).toJSON()).toMatchSnapshot();

});