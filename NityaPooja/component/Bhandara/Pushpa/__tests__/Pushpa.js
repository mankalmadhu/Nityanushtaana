import 'react-native';
import React from 'react';
import ಪುಷ್ಪ from '../Pushpa';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಪುಷ್ಪ" , () => {

expect(Renderer.create(
    <ಪುಷ್ಪ />
).toJSON()).toMatchSnapshot();

});