import 'react-native';
import React from 'react';
import ವಿನಿಯೋಗ from '../Viniyoga';

import Renderer from 'react-test-renderer';

test("ವಿನಿಯೋಗ" , () => {

expect(Renderer.create(
    <ವಿನಿಯೋಗ >
      Some Text
    </ವಿನಿಯೋಗ>
).toJSON()).toMatchSnapshot();

});