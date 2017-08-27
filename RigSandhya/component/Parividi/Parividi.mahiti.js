import Shreekara from '../Shreekara/Shreekara';

export const sandhyaChitra = () => require('./chitra/sandhya.png');
export const agnikaryaChitra = () => require('./chitra/agnikarya.png');
export const upadeshaChitra = () => require('./chitra/upadesha.png');
export const paschat = () => Shreekara;

export const parividiMahiti = () => [
  {
    "shershike":  "ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ",
    "chitra": exports.sandhyaChitra(),
    "paschat": exports.paschat()
  },
  {
    "shershike":  "ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ",
    "chitra": exports.agnikaryaChitra(),
    "paschat": exports.paschat()
  },
  {
    "shershike":  "ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ",
    "chitra": exports.sandhyaChitra(),
    "paschat": exports.paschat()
  },
  {
    "shershike":  "ಸಾಯ೦ಸ೦ಧ್ಯಾ",
    "chitra": exports.sandhyaChitra(),
    "paschat": exports.paschat()
  },
  {
    "shershike":  "ಸಾಯ೦ಸಮಿಧಾದಾನ",
    "chitra": exports.agnikaryaChitra(),
    "paschat": exports.paschat()
  },
  {
    "shershike":  "ಯಜ್ಞೋಪವೀತ",
    "chitra": exports.upadeshaChitra(),
    "paschat": exports.paschat()
  },
  {
    "shershike":  "ಉಪನಯನಕಾರಿಕ",
    "chitra": exports.upadeshaChitra(),
    "paschat": exports.paschat()
  }
  ]
