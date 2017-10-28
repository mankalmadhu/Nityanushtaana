import 'react-native';
import React from 'react';
import ಲೇಖನಶೀರ್ಷಿಕೆ from '../LekhanaShershike';

import Renderer from 'react-test-renderer';

test("ಲೇಖನಶೀರ್ಷಿಕೆ" , () => {
expect(Renderer.create(
    <ಲೇಖನಶೀರ್ಷಿಕೆ>
       Some Title
    </ಲೇಖನಶೀರ್ಷಿಕೆ>
).toJSON()).toMatchSnapshot();

});