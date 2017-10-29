import 'react-native';
import React from 'react';
import ಆದಿಪ್ರಾರ್ಥನೆ from '../AdiPrarthane';

import Renderer from 'react-test-renderer';

jest.mock('../../../Avarana/Avarana',()=>'ಆವರಣ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಆದಿಪ್ರಾರ್ಥನೆ" , () => {

expect(Renderer.create(
    <ಆದಿಪ್ರಾರ್ಥನೆ />
).toJSON()).toMatchSnapshot();

});