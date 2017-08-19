import React from 'react';
import {Navigation, Card} from 'react-router-navigation';

import Parividi from '../Parividi/Parividi';
import Shreekara from '../Shreekara/Shreekara';
import Shershike from '../Shershike/Shershike';

export default Diksoochi = () => (
      <Navigation navBarStyle={{backgroundColor: '#C1C1C1'}}>
        <Card exact path="/" component={Parividi} renderTitle = {()=>(<Shershike shershike='ಋಗ್ವೇದ ಸ೦ಧ್ಯಾವ೦ದನ'/>)}/>
        <Card path="/ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ'/>)} />
        <Card path="/ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ'/>)} />
        <Card path="/ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ'/>)} />
        <Card path="/ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ'/>)} />
        <Card path="/ಸಾಯ೦ಸ೦ಧ್ಯಾ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಸಾಯ೦ಸ೦ಧ್ಯಾ'/>)} />
        <Card path="/ಸಾಯ೦ಸಮಿಧಾದಾನ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಸಾಯ೦ಸಮಿಧಾದಾನ'/>)} />
        <Card path="/ಯಜ್ಞೋಪವೀತ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಯಜ್ಞೋಪವೀತ'/>)} />
        <Card path="/ಉಪನಯನಕಾರಿಕ"  component={Shreekara} renderTitle = {()=>(<Shershike shershike='ಉಪನಯನಕಾರಿಕ'/>)} />
      </Navigation>
     
  );
  