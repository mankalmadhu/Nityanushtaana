import 'react-native';
import React from 'react';
import ವಸ್ತ್ರಯುಗ್ಮ from '../VastraYugma';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ವಸ್ತ್ರಯುಗ್ಮ" , () => {

expect(Renderer.create(
    <ವಸ್ತ್ರಯುಗ್ಮ />
).toJSON()).toMatchSnapshot();

});