import React from 'react';
import ದ್ವಿತೀಯಮಾರ್ಜನೆ from '../DwiteyaMarjane';
import Renderer from 'react-test-renderer';

jest.mock('../../Marjane/Marjane',()=>'ಮಾರ್ಜನೆ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../../../Vishaya/Viniyoga',()=>'ವಿನಿಯೋಗ');
jest.mock('../../../Vishaya/Purvanga',()=>'ಪೂರ್ವಾ೦ಗ');
jest.mock('../../Gayatri/Vyahruti',()=>'ವ್ಯಾಹೃತಿ');
jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');

test("ದ್ವಿತೀಯಮಾರ್ಜನೆ", () => {
  const marjane = Renderer.create(
    <ದ್ವಿತೀಯಮಾರ್ಜನೆ />
  ).toJSON();

  expect(marjane).toMatchSnapshot();

});