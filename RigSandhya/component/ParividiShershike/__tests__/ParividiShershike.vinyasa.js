import React from 'react';
import parividiShershikeVinyasa from '../ParividiShershike.vinyasa';

test("ParividiShershike Vinyasa" , () => {
  expect(<div>{parividiShershikeVinyasa}</div>).toMatchSnapshot();
});