import React from 'react';
import { View, Text } from 'react-native';
import parividiShershikeVinyasa from './ParividiShershike.vinyasa';
import PropTypes from 'prop-types';

export default ParividiShershike = (props) => (
  <View style={parividiShershikeVinyasa.avarana}>
    <Text style={parividiShershikeVinyasa.pathya}>
      {props.shershike}
    </Text>
  </View>
);

ParividiShershike.propTypes = {
  shershike : PropTypes.string.isRequired
};