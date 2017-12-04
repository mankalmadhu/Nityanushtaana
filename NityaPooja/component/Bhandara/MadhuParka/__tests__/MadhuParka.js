import 'react-native';
import React from 'react';
import ಮಧುಪರ್ಕ from '../MadhuParka';
 
import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಮಧುಪರ್ಕ" , () => {

expect(Renderer.create(
    <ಮಧುಪರ್ಕ />
).toJSON()).toMatchSnapshot();

});