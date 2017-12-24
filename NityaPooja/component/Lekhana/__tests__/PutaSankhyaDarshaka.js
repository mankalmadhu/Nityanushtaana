import 'react-native';
import React from 'react';
import ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ from '../PutaSankhyaDarshaka';

import Renderer from 'react-test-renderer';

test("ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ" , () => {

expect(Renderer.create(
    <ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ />
).toJSON()).toMatchSnapshot();

});