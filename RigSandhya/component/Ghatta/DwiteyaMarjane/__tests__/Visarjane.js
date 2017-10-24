import React from 'react';
import ವಿಸರ್ಜನೆ from '../Visarjane';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ವಿಸರ್ಜನೆ", () => {
    expect(Renderer.create(
      <ವಿಸರ್ಜನೆ />
    ).toJSON()).toMatchSnapshot();

});