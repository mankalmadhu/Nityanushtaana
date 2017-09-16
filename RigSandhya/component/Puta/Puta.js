import React from 'react';

import { View, ScrollView} from 'react-native';

export default ಪುಟ = (props) => (
  <View>
    <ScrollView>
      {props.children}
    </ScrollView>
  </View>
  
);
