import React from 'react';
import parividiVinyasa from '../Parividi.vinyasa';

test("Parividi Vinyasa" , () => {
  expect(<div>{parividiVinyasa}</div>).toMatchSnapshot();
});