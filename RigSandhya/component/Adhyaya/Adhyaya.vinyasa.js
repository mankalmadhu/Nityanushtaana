import { StyleSheet } from 'react-native';
import { Font } from 'expo';

export default adhyayaVinyasa = StyleSheet.create({
  avarana: {
    flex: 1,
    padding: 16,
    flexDirection: 'row',
    alignItems: 'center',
  },
  pathya: {
    marginLeft: 25,
    fontSize: 17,
    ...Font.style('ganapati'),
    color: '#ffffff'
  },
  chitra: {
    height: 40,
    width: 40,
    borderRadius: 20,
  },
});