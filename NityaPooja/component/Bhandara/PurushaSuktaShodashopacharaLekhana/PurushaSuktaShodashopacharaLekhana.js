import React from 'react';

import ಲೇಖನ from '../../Lekhana/Lekhana';
import ಲೇಖನಶೀರ್ಷಿಕೆ from '../../LekhanaSheershike/LekhanaShershike';
import ಆವರಣ from '../../Avarana/Avarana';

export default ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರಲೇಖನ = (props) =>

  (
    <ಆವರಣ>
      <ಲೇಖನಶೀರ್ಷಿಕೆ>
        ಪುರುಷಸೂಕ್ತಶೋಢಷೋಪಚಾರ
      </ಲೇಖನಶೀರ್ಷಿಕೆ>
      <ಲೇಖನ>
        {props.children}
      </ಲೇಖನ>
    </ಆವರಣ>
  );

