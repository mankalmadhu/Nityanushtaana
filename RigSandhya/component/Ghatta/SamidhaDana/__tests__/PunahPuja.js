import React from 'react';
import ಪುನಃಪೂಜಾ from '../PunahPuja';
import Renderer from 'react-test-renderer';



jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../Gayatri/Trihruti', () => 'ತ್ರಿಹೃತಿ');

test("ಪುನಃಪೂಜಾ", () => {
   expect(Renderer.create(
    <ಪುನಃಪೂಜಾ />
  ).toJSON()).toMatchSnapshot();

});