import Shreekara from '../Shreekara/Shreekara';
import ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ from '../PratahSandhya/PratahSandhya';
import ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ from '../PratahSamidhaDana/PratahSamidhaDana';
import ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ from '../MadhyahnikaSandhya/MadhyahnikaSandhya';
import ಸಾಯ೦ಸ೦ಧ್ಯಾ from '../SayamSandhya/SayamSandhya';
import ಸಾಯ೦ಸಮಿಧಾದಾನ from '../SayamSamidhaDana/SayamSamidhaDana';
import ಯಜ್ಞೋಪವೀತ from '../Yajnopaveeta/Yajnopaveeta';
import ಉಪನಯನಕಾರಿಕಾ from '../UpanayanaKarika/UpanayanaKarika';


export const sandhyaChitra = () => require('./chitra/sandhya.png');
export const agnikaryaChitra = () => require('./chitra/agnikarya.png');
export const yajnopavetaChitra = () => require('./chitra/yajnopaveta.png');
export const pratahSandhya = ()=> ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ;
export const pratahSamidhaDana = ()=> ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ;
export const madhyahnikaSandhya = ()=> ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ;
export const sayamSandhya = ()=> ಸಾಯ೦ಸ೦ಧ್ಯಾ;
export const sayamSamidhaDana = ()=> ಸಾಯ೦ಸಮಿಧಾದಾನ;
export const yajnopaveeta = ()=> ಯಜ್ಞೋಪವೀತ;
export const upanayanaKarika = ()=> ಉಪನಯನಕಾರಿಕಾ;


export const parividiMahiti = () => [
  {
    "shershike":  "ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ",
    "chitra": exports.sandhyaChitra(),
    "paschat": exports.pratahSandhya()
  },
  {
    "shershike":  "ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ",
    "chitra": exports.agnikaryaChitra(),
    "paschat": exports.pratahSamidhaDana()
  },
  {
    "shershike":  "ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ",
    "chitra": exports.sandhyaChitra(),
    "paschat": exports.madhyahnikaSandhya()
  },
  {
    "shershike":  "ಸಾಯ೦ಸ೦ಧ್ಯಾ",
    "chitra": exports.sandhyaChitra(),
    "paschat": exports.sayamSandhya()
  },
  {
    "shershike":  "ಸಾಯ೦ಸಮಿಧಾದಾನ",
    "chitra": exports.agnikaryaChitra(),
    "paschat": exports.sayamSamidhaDana()
  },
  {
    "shershike":  "ಯಜ್ಞೋಪವೀತ",
    "chitra": exports.yajnopavetaChitra(),
    "paschat": exports.yajnopaveeta()
  },
  {
    "shershike":  "ಉಪನಯನಕಾರಿಕ",
    "chitra": exports.yajnopavetaChitra(),
    "paschat": exports.upanayanaKarika()
  }
  ]
