import { StyleSheet } from 'react-native';
import { Font } from 'expo';

export default shreekaraVinyasa = StyleSheet.create({
  avarana: {
    flex: 1,
    padding: 3,
    flexDirection: 'column',
    alignItems: 'center',
    backgroundColor: '#333333'
  },
  pathya: {
    fontSize: 18,
    ...Font.style('ganapati'),
    color: '#ffffff',
    marginLeft: 3,
    textAlign:'justify',
    lineHeight:50
  }
  
});
