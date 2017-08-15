import React from 'react';
import {Diksoochi,dikSoochiMahiti} from '../Diksoochi';

jest.mock('react-navigation/lib/react-navigation.js', ()=>{
  return ({StackNavigator : jest.fn()});
});

const stackNavigator = require('react-navigation/lib/react-navigation.js');

test("Diksoochi Mahiti" , () => {
  expect(stackNavigator.StackNavigator).toBeCalledWith(dikSoochiMahiti);
});