import React from 'react';
import {View,Text } from 'react-native';

export default ಪುಟಸ೦ಖ್ಯಾದರ್ಶಕ = (index, total, context) =>  (
  
    <View style={{alignItems:'center',backgroundColor:'#595959',height:30, bottom:0}}>
      <Text style={{ color: '#ffffff',fontSize: 16 }}>
        <Text>{index + 1}</Text>/{total}
      </Text>
    </View>
  );
