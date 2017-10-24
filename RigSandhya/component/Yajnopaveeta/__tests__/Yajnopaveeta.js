import React from 'react';
import ಯಜ್ಞೋಪವೀತ from '../Yajnopaveeta';
import Renderer from 'react-test-renderer';

jest.mock('../../Lekhana/Lekhana', () => 'ಲೇಖನ' );
jest.mock('../../Puta/Puta', () => 'ಪುಟ' );
jest.mock('../../Ghatta/YajnopavetaMantra/YajnopavetaDharana',()=>'ಯಜ್ಞೋಪವೀತಧಾರಣ');
jest.mock('../../Ghatta/YajnopavetaMantra/YajnopavetaVisarjana',()=>'ಯಜ್ಞೋಪವೀತವಿಸರ್ಜನ');

test("ಯಜ್ಞೋಪವೀತ", () => {
  expect(Renderer.create(
    <ಯಜ್ಞೋಪವೀತ />
  ).toJSON()).toMatchSnapshot();

});