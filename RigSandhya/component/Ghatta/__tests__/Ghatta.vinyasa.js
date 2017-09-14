import React from 'react';
import ಘಟ್ಟವಿನ್ಯಾಸ from '../Ghatta.vinyasa';

test("Ghatta Vinyasa" , () => {
  expect(<div>{ಘಟ್ಟವಿನ್ಯಾಸ}</div>).toMatchSnapshot();
});