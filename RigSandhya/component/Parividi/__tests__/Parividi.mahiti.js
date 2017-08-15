import React from 'react';

const mahiti =require('../Parividi.mahiti');

test("Parividi Mahiti" , () => {
  mahiti.sandhyaChitra = jest.fn(()=>'./chitra/sandhya.png');
  mahiti.agnikaryaChitra = jest.fn(()=>'./chitra/agnikarya.png');
  mahiti.upadeshaChitra = jest.fn(()=>'./chitra/upadesha.png');
  expect(<div>{mahiti.parividiMahiti()}</div>).toMatchSnapshot();
});