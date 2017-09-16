import React from 'react';
import {  Text } from 'react-native';
import PropTypes from 'prop-types';

export default ವಿಷಯ = (props) => (
    <Text style={props.ವಿನ್ಯಾಸ}>
      {props.children}
    </Text>
  
);

ವಿಷಯ.propTypes = {
  ವಿನ್ಯಾಸ : PropTypes.object.isRequired
};