import {ListView, View} from 'react-native';
import React from 'react';

import Adhyaya from '../Adhyaya/Adhyaya';
import parividiVinyasa from './Parividi.vinyasa';
import {parividiMahiti} from './Parividi.mahiti';

export default class Parividi extends React.Component {
  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2});
    this.state = {
      dataSource: ds.cloneWithRows(parividiMahiti()),
    };
  }
  render() {

    const renderData = parividiMahiti();
    return (
      <ListView
        style={parividiVinyasa.avarana}
        dataSource={this.state.dataSource}
        renderRow={(renderData) => <Adhyaya {...renderData}/>}
        renderSeparator={(sectionId,rowId) => <View key={rowId} style={parividiVinyasa.vibhajaka} />}
        
      />
    );
  }
}