import 'react-native';
import React from 'react';
import ಲೇಖನ from '../Lekhana';

import Renderer from 'react-test-renderer';

test("ಲೇಖನ" , () => {

expect(Renderer.create(
    <ಲೇಖನ />
).toJSON()).toMatchSnapshot();

});