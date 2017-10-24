import React from 'react';
import ಅಗ್ನ್ಯುಪಸ್ಥಾನ from '../AgniUpasthana';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಅಗ್ನ್ಯುಪಸ್ಥಾನ", () => {
   expect(Renderer.create(
    <ಅಗ್ನ್ಯುಪಸ್ಥಾನ />
  ).toJSON()).toMatchSnapshot();

});