import React from 'react';
import shershikeVinyasa from '../Shershike.vinyasa';

test("Shershike Vinyasa" , () => {
  expect(<div>{shershikeVinyasa}</div>).toMatchSnapshot();
});