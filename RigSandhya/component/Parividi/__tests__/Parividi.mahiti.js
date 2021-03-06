import React from 'react';

const mahiti =require('../Parividi.mahiti');

test("Parividi Mahiti" , () => {
  mahiti.sandhyaChitra = jest.fn(()=>'./chitra/sandhya.png');
  mahiti.agnikaryaChitra = jest.fn(()=>'./chitra/agnikarya.png');
  mahiti.yajnopavetaChitra = jest.fn(()=>'./chitra/yajnopaveta.png');
  mahiti.pratahSandhya = jest.fn(()=>'ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ');
  mahiti.pratahSamidhaDana = jest.fn(()=>'ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ');
  mahiti.madhyahnikaSandhya = jest.fn(()=>'ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ');
  mahiti.sayamSandhya = jest.fn(()=>'ಸಾಯ೦ಸ೦ಧ್ಯಾ');
  mahiti.sayamSamidhaDana = jest.fn(()=>'ಸಾಯ೦ಸಮಿಧಾದಾನ');
  mahiti.upanayanaKarika = jest.fn(()=>'ಉಪನಯನಕಾರಿಕಾ');
  mahiti.upanayanaKarika = jest.fn(()=>'ಯಜ್ಞೋಪವೀತ');
  expect(<div>{mahiti.parividiMahiti()}</div>).toMatchSnapshot();
});