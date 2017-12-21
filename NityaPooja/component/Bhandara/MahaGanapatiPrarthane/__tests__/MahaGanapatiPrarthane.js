import 'react-native';
import React from 'react';
import ಮಹಾಗಣಪತಿಪ್ರಾರ್ಥನೆ from '../MahaGanapatiPrarthane';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವೋತ್ತರ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Vidhana',()=>'ವಿಧಾನ');

test("ಮಹಾಗಣಪತಿಪ್ರಾರ್ಥನೆ" , () => {

expect(Renderer.create(
    <ಮಹಾಗಣಪತಿಪ್ರಾರ್ಥನೆ />
).toJSON()).toMatchSnapshot();

});