import 'react-native';
import React from 'react';
import ಆಸನ from '../Aasana';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವೋತ್ತರ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಆಸನ" , () => {

expect(Renderer.create(
    <ಆಸನ />
).toJSON()).toMatchSnapshot();

});