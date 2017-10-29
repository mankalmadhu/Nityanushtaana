import 'react-native';
import React from 'react';
import ಘ೦ಟಾನಾದ from '../Ghantanaada';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಘ೦ಟಾನಾದ" , () => {

expect(Renderer.create(
    <ಘ೦ಟಾನಾದ />
).toJSON()).toMatchSnapshot();

});