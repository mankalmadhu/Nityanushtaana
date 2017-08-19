import React from 'react';
import { View, Text } from 'react-native';
import shershikeVinyasa from './Shershike.vinyasa';
import PropTypes from 'prop-types';

export default Shershike = (props) => (
  <View style={shershikeVinyasa.avarana}>
    <Text style={shershikeVinyasa.pathya}>
      {props.shershike}
    </Text>
  </View>
);

Shershike.propTypes = {
  shershike : PropTypes.string.isRequired
};