import 'react-native';
import React from 'react';
import ಮ೦ತ್ರಪುಷ್ಪ from '../MantraPushpa';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಮ೦ತ್ರಪುಷ್ಪ" , () => {

expect(Renderer.create(
    <ಮ೦ತ್ರಪುಷ್ಪ />
).toJSON()).toMatchSnapshot();

});