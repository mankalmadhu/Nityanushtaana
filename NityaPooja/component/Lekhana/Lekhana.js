import React from 'react';
import {View,Text } from 'react-native';
import Swiper from 'react-native-swiper';
import lekhanaVinyasa from './Lekhana.vinyasa';
import ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ from './PutaSankhyaDarshaka';

export default  ಲೇಖನ = (props)=> (
      <Swiper style={lekhanaVinyasa.avarana} renderPagination={ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ}>
        {props.children}
      </Swiper>
);
  
