import React from 'react';
import {View } from 'react-native';
import Swiper from 'react-native-swiper';
import lekhanaVinyasa from './Lekhana.vinyasa';
import ಲೇಖನಶೀರ್ಷಿಕೆ from '../LekhanaSheershike/LekhanaShershike';

export default class ಲೇಖನ extends React.Component {

  render(){
    return (
      <View style={{flex:1}}>
      <ಲೇಖನಶೀರ್ಷಿಕೆ>
        {this.props.title}
      </ಲೇಖನಶೀರ್ಷಿಕೆ>
      <Swiper style={lekhanaVinyasa.avarana} 
      paginationStyle={{backgroundColor:'#595959',height:30, bottom:0}}
      dotColor='#ffffff'
      activeDotColor='#3bdde5'
      >
      {this.props.children}
    </Swiper>
    </View>
    );
  }
  
}
