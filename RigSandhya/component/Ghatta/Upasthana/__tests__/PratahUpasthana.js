import React from 'react';
import ಪ್ರಾತರುಪಸ್ಥಾನ from '../PratahUpasthana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../JaataVedase',()=>'ಜಾತವೇದಸೇ');
jest.mock('../Tachayo',()=>'ತಚ್ಛ೦ಯೋ');
jest.mock('../NamoBramhane',()=>'ನಮೋಬ್ರಹ್ಮಣೇ');

test("ಪ್ರಾತರುಪಸ್ಥಾನ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರುಪಸ್ಥಾನ />
  ).toJSON()).toMatchSnapshot();

});