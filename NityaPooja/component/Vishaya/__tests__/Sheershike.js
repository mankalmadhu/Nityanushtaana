import 'react-native';
import React from 'react';
import ಶೀರ್ಷಿಕೆ from '../Sheershike';

import Renderer from 'react-test-renderer';

test("ಶೀರ್ಷಿಕೆ" , () => {

expect(Renderer.create(
    <ಶೀರ್ಷಿಕೆ>
      Some Text
    </ಶೀರ್ಷಿಕೆ>
).toJSON()).toMatchSnapshot();

});