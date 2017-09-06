import React from 'react';
import { View, Text } from 'react-native';
import PropTypes from 'prop-types';

export default Shershike = (props) => (
  <View style={props.vinyasa.avarana}>
    <Text style={props.vinyasa.pathya}>
      {props.shershike}
    </Text>
  </View>
);

Shershike.propTypes = {
  shershike : PropTypes.string.isRequired,
  vinyasa: PropTypes.object.isRequired
};