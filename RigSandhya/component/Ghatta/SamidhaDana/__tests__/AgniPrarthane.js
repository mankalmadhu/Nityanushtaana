import React from 'react';
import ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ from '../AgniPrarthane';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ", () => {
   expect(Renderer.create(
    <ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ />
  ).toJSON()).toMatchSnapshot();

});