import React from 'react';
import {ViewPagerAndroid } from 'react-native';
import lekhanaVinyasa from './Lekhana.vinyasa';

export default ಲೇಖನ = (props) => (
    <ViewPagerAndroid style={lekhanaVinyasa.avarana} initialPage={0}>
      {props.children}
    </ViewPagerAndroid>
);

