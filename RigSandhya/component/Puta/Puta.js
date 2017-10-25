import React from 'react';
 
import { View, ScrollView} from 'react-native';

export default ಪುಟ = (props) => (
  <View>
    <ScrollView contentContainerStyle={{paddingBottom:30}}>
      {props.children}
    </ScrollView>
  </View>
  
);
