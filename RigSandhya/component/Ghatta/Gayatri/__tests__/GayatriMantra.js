import React from 'react';
import ಗಾಯತ್ರೀಮ೦ತ್ರ from '../GayatriMantra';
import Renderer from 'react-test-renderer';


jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');

test("ಗಾಯತ್ರೀಮ೦ತ್ರ", () => {
   expect(Renderer.create(
    <ಗಾಯತ್ರೀಮ೦ತ್ರ />
  ).toJSON()).toMatchSnapshot();

});