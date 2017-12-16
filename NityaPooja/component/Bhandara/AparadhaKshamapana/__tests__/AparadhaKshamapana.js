import 'react-native';
import React from 'react';
import ಅಪರಾಧಕ್ಷಮಾಪಣ from '../AparadhaKshamapana';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಅಪರಾಧಕ್ಷಮಾಪಣ" , () => {

expect(Renderer.create(
    <ಅಪರಾಧಕ್ಷಮಾಪಣ />
).toJSON()).toMatchSnapshot();

});