import {ListView, View} from 'react-native';
import React from 'react';

import Prakarana from '../Prakarana/Prakarana';
import ParividiShershike from '../ParividiShershike/ParividiShershike';
import parividiVinyasa from './Parividi.Styles';
import {prakaranaMahiti} from './Parividi.data';

class Parividi extends React.Component {
  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2});
    this.state = {
      dataSource: ds.cloneWithRows(prakaranaMahiti),
    };
  }
  render() {
    return (
      <ListView
        style={parividiVinyasa.container}
        dataSource={this.state.dataSource}
        renderHeader={() => <ParividiShershike />}
        renderRow={(prakaranaMahiti) => <Prakarana {...prakaranaMahiti} />}
        renderSeparator={(sectionId,rowId) => <View key={rowId} style={parividiVinyasa.separator} />}
        
      />
    );
  }
}

export default Parividi;