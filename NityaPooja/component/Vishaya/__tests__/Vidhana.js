import 'react-native';
import React from 'react';
import ವಿಧಾನ from '../Vidhana';

import Renderer from 'react-test-renderer';

test("ವಿಧಾನ" , () => {

expect(Renderer.create(
    <ವಿಧಾನ>
      Some Text
    </ವಿಧಾನ>
).toJSON()).toMatchSnapshot();

});