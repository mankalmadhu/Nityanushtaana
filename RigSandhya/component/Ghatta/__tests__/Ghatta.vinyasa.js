import React from 'react';
import ghattaVinyasa from '../Ghatta.vinyasa';

test("Ghatta Vinyasa" , () => {
  expect(<div>{ghattaVinyasa}</div>).toMatchSnapshot();
});