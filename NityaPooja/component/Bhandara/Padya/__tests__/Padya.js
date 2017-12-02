import 'react-native';
import React from 'react';
import ಪಾದ್ಯ from '../Padya';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಪಾದ್ಯ" , () => {

expect(Renderer.create(
    <ಪಾದ್ಯ />
).toJSON()).toMatchSnapshot();

});