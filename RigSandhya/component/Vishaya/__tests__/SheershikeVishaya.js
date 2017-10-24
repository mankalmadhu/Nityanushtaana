import 'react-native';
import React from 'react';
import ಶೀರ್ಷಿಕೆವಿಷಯ from '../SheershikeVishaya';

import Renderer from 'react-test-renderer';

test("ಶೀರ್ಷಿಕೆವಿಷಯ" , () => {

expect(Renderer.create(
    <ಶೀರ್ಷಿಕೆವಿಷಯ >
      Some Text
    </ಶೀರ್ಷಿಕೆವಿಷಯ>
).toJSON()).toMatchSnapshot();

});