import 'react-native';
import React from 'react';
import ಲೇಖನ from '../Lekhana';

import Renderer from 'react-test-renderer';

jest.mock('react-native-swiper',()=>'Swiper');
jest.mock('../PutaSankhyaDarshaka',()=>'ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ');

test("ಲೇಖನ" , () => {

expect(Renderer.create(
    <ಲೇಖನ />
).toJSON()).toMatchSnapshot();

});