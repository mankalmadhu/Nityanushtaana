import 'react-native';
import React from 'react';
import ಪುನರ್ರಘ್ಯ from '../Punararghya';
 
import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವೋತ್ತರ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಪುನರ್ರಘ್ಯ" , () => {

expect(Renderer.create(
    <ಪುನರ್ರಘ್ಯ />
).toJSON()).toMatchSnapshot();

});