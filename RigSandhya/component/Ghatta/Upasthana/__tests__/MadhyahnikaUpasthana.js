import React from 'react';
import ಮಾಧ್ಯಾಹ್ನಿಕೌಪಸ್ಥಾನ from '../MadhyahnikaUpasthana';
import Renderer from 'react-test-renderer';

jest.mock('../../Ghatta.vinyasa');
jest.mock('../../../Vishaya/Vishaya',()=>'ವಿಷಯ');
jest.mock('../../../Vishaya/Sheershike',()=>'ಶೀರ್ಷಿಕೆ');
jest.mock('../Udutyam',()=>'ಉದುತ್ಯ೦');
jest.mock('../ChitramDevanam',()=>'ಚಿತ್ರ೦ದೇವಾನಾ೦');
jest.mock('../Tachaskshuhu',()=>'ತಚ್ಚಕ್ಷುಃ');
jest.mock('../NamoBramhane',()=>'ನಮೋಬ್ರಹ್ಮಣೇ');
jest.mock('../Pravara',()=>'ಪ್ರವರ');
jest.mock('../AasatyaLokaat',()=>'ಆಸತ್ಯಲೋಕಾತ್');

test("ಮಾಧ್ಯಾಹ್ನಿಕೌಪಸ್ಥಾನ", () => {
   expect(Renderer.create(
    <ಮಾಧ್ಯಾಹ್ನಿಕೌಪಸ್ಥಾನ />
  ).toJSON()).toMatchSnapshot();

});