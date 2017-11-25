import 'react-native';
import React from 'react';
import ಭೂತೋತ್ಸರಣ from '../Bhoototsarana';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಭೂತೋತ್ಸರಣ" , () => {

expect(Renderer.create(
    <ಭೂತೋತ್ಸರಣ />
).toJSON()).toMatchSnapshot();

});