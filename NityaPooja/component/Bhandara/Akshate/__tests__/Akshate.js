import 'react-native';
import React from 'react';
import ಅಕ್ಷತೆ from '../Akshate';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಅಕ್ಷತೆ" , () => {

expect(Renderer.create(
    <ಅಕ್ಷತೆ />
).toJSON()).toMatchSnapshot();

});