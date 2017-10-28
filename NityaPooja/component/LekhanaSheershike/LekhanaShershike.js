import React from 'react';
import {View , Text} from 'react-native';
import Swiper from 'react-native-swiper';
import lekhanaShershikeVinyasa from './LekhanaShershike.vinyasa';

export default ಲೇಖನಶೀರ್ಷಿಕೆ = (props) => (

    <View style={lekhanaShershikeVinyasa.avarana}>
      <Text style={lekhanaShershikeVinyasa.pathya}>
        {props.children}
      </Text>
    </View>


);

