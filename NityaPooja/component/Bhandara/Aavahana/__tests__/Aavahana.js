import 'react-native';
import React from 'react';
import ಧ್ಯಾನಆವಾಹನ from '../Aavahana';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವೋತ್ತರ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಧ್ಯಾನಆವಾಹನ" , () => {

expect(Renderer.create(
    <ಧ್ಯಾನಆವಾಹನ />
).toJSON()).toMatchSnapshot();

});