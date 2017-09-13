import React from 'react';
import {  Text } from 'react-native';
import PropTypes from 'prop-types';

export default ವಿಷಯ = (props) => (
    <Text style={props.vinyasa}>
      {props.vishaya}
    </Text>
  
);

ವಿಷಯ.propTypes = {
  vinyasa : PropTypes.object.isRequired,
  vishaya : PropTypes.string.isRequired
};