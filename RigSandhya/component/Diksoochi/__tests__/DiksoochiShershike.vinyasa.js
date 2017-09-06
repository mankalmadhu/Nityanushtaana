import React from 'react';
import diksoochiShershikeVinyasa from '../DiksoochiShershike.vinyasa';

test("Shershike Vinyasa" , () => {
  expect(<div>{diksoochiShershikeVinyasa}</div>).toMatchSnapshot();
});