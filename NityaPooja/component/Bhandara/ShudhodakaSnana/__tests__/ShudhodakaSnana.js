import 'react-native';
import React from 'react';
import ಶುದ್ಧೋದಕಸ್ನಾನ from '../ShudhodakaSnana';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಶುದ್ಧೋದಕಸ್ನಾನ" , () => {

expect(Renderer.create(
    <ಶುದ್ಧೋದಕಸ್ನಾನ />
).toJSON()).toMatchSnapshot();

});