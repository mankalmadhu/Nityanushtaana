import 'react-native';
import React from 'react';
import ಆವರಣ from '../Avarana';

import Renderer from 'react-test-renderer';

test("ಆವರಣ" , () => {

expect(Renderer.create(
    <ಆವರಣ>
      Avarana Texts
    </ಆವರಣ>
).toJSON()).toMatchSnapshot();

});