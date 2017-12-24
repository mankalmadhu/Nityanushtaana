import React from 'react';
import {View,Text } from 'react-native';
import Swiper from 'react-native-swiper';
import lekhanaVinyasa from './Lekhana.vinyasa';
import ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ from './PutaSankhyaDarshaka';

export default class ಲೇಖನ extends React.Component {

  render(){
    return (
      <Swiper style={lekhanaVinyasa.avarana} 
       renderPagination={ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ}
      >
      {this.props.children}
    </Swiper>

    );
  }
  
}
