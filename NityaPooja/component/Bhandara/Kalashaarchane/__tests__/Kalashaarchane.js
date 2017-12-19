import 'react-native';
import React from 'react';
import ಕಲಶಾರ್ಚನೆ from '../Kalashaarchane';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವೋತ್ತರ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಕಲಶಾರ್ಚನೆ" , () => {

expect(Renderer.create(
    <ಕಲಶಾರ್ಚನೆ />
).toJSON()).toMatchSnapshot();

});