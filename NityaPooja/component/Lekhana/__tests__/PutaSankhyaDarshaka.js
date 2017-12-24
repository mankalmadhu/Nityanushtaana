import 'react-native';
import React from 'react';
import ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ from '../PutaSankhyaDarshaka';

import Renderer from 'react-test-renderer';

test("ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ" , () => {

expect(ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ(3,20)).toMatchSnapshot();

});