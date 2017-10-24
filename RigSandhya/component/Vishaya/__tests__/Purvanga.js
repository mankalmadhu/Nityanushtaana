import 'react-native';
import React from 'react';
import ಪೂರ್ವಾ೦ಗ from '../Purvanga';

import Renderer from 'react-test-renderer';

test("ಶೀರ್ಷಿಕೆವಿಷಯ" , () => {

expect(Renderer.create(
    <ಪೂರ್ವಾ೦ಗ >
      Some Text
    </ಪೂರ್ವಾ೦ಗ>
).toJSON()).toMatchSnapshot();

});