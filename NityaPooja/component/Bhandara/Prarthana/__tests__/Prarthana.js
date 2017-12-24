import 'react-native';
import React from 'react';
import ಪ್ರಾರ್ಥನ from '../Prarthana';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವೋತ್ತರ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಪ್ರಾರ್ಥನ" , () => {

expect(Renderer.create(
    <ಪ್ರಾರ್ಥನ />
).toJSON()).toMatchSnapshot();

});