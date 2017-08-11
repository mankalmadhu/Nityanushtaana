import React from 'react';
import adhyayaVinyasa from '../Adhyaya.vinyasa';

test("Adhyaya Vinyasa" , () => {
  expect(<div>{adhyayaVinyasa}</div>).toMatchSnapshot();
});