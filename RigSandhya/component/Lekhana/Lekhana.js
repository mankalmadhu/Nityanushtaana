import React from 'react';
import {View } from 'react-native';
import Swiper from 'react-native-swiper';
import lekhanaVinyasa from './Lekhana.vinyasa';

export default ಲೇಖನ = (props) => (
    <Swiper style={lekhanaVinyasa.avarana} 
      paginationStyle={{backgroundColor:'#595959',height:30, bottom:0}}
      dotColor='#ffffff'
      activeDotColor='#3bdde5'
      >
      {props.children}
    </Swiper>
);

