import React from 'react';
import {Navigation, Card} from 'react-router-navigation';

import Parividi from '../Parividi/Parividi';
import Shreekara from '../Shreekara/Shreekara';
import Shershike from '../Shershike/Shershike';
import { Font } from 'expo';
import {parividiMahiti} from '../Parividi/Parividi.mahiti';

import diksoochiVinyasa from './Diksoochi.vinyasa';

var cardsCollection = parividiMahiti().map(function(mahiti){
  return <Card 
            path={`/${mahiti.shershike}`}  
            component={Shreekara} 
            renderTitle = {()=>(<Shershike shershike={`${mahiti.shershike}`}/>)}
            key={`${mahiti.shershike}`} />;
});

export default class Diksoochi extends React.Component {
  
    state = {
      fontLoaded: false,
    };
    async componentDidMount() {
      await Font.loadAsync({
        'ganapati': require('../../assets/fonts/ganapati.ttf'),
      });
      this.setState({ fontLoaded: true });
    }
  
    render()
    {
      if(this.state.fontLoaded) {
      return  (
        <Navigation navBarStyle={diksoochiVinyasa.shershikeAvarana} backButtonTintColor='#ffffff'>
         <Card 
          exact path="/" 
          component={Parividi} 
          renderTitle = {()=>(<Shershike shershike='ಋಗ್ವೇದ ಸ೦ಧ್ಯಾವ೦ದನ'/>)}/>
         {cardsCollection}
      </Navigation>
      );
    } else {
      return null;
    }
    }
  
  }

  