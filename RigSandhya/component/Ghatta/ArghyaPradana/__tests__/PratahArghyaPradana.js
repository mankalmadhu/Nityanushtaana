import React from 'react';
import ಪ್ರಾತರರ್ಘ್ಯ from '../PratahArghyaPradana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../Gayatri/Trihruti',()=>'ತ್ರಿಹೃತಿ');
jest.mock('../../Gayatri/GayatriMantra',()=>'ಗಾಯತ್ರೀಮ೦ತ್ರ');
jest.mock('../../Sankalpa/Oomapo',()=>'ಓಮಾಪೋ');

test("ಪ್ರಾತರರ್ಘ್ಯ", () => {
   expect(Renderer.create(
    <ಪ್ರಾತರರ್ಘ್ಯ />
  ).toJSON()).toMatchSnapshot();

});