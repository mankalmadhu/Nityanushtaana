import React from 'react';
import {Navigation, Card} from 'react-router-navigation';

import Parividi from '../Parividi/Parividi';
import Shreekara from '../Shreekara/Shreekara';
import Shershike from '../Shershike/Shershike';
import {parividiMahiti} from '../Parividi/Parividi.mahiti';

import diksoochiVinyasa from './Diksoochi.vinyasa';

var cardsCollection = parividiMahiti().map(function(mahiti){
  return <Card 
            path={`/${mahiti.shershike}`}  
            component={Shreekara} 
            renderTitle = {()=>(<Shershike shershike={`${mahiti.shershike}`}/>)}
            key={`${mahiti.shershike}`} />;
});

export default Diksoochi = () => (
      
       <Navigation navBarStyle={diksoochiVinyasa.shershikeAvarana} backButtonTintColor='#ffffff'>
         <Card 
          exact path="/" 
          component={Parividi} 
          renderTitle = {()=>(<Shershike shershike='ಋಗ್ವೇದ ಸ೦ಧ್ಯಾವ೦ದನ'/>)}/>
         {cardsCollection}
      </Navigation>
      
  );
  