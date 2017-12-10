import 'react-native';
import React from 'react';
import ನೈವೇದ್ಯ from '../Naivedya';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ನೈವೇದ್ಯ" , () => {

expect(Renderer.create(
    <ನೈವೇದ್ಯ />
).toJSON()).toMatchSnapshot();

});