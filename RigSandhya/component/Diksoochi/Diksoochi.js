import React from 'react';
import {Navigation, Card} from 'react-router-navigation';

import Parividi from '../Parividi/Parividi';
import Shershike from '../Shershike/Shershike';
import {parividiMahiti} from '../Parividi/Parividi.mahiti';

import diksoochiVinyasa from './Diksoochi.vinyasa';
import diksoochiShershikeVinyasa from './DiksoochiShershike.vinyasa';

var cardsCollection = parividiMahiti().map(function(mahiti){
  return <Card 
            path={`/${mahiti.shershike}`}  
            component={mahiti.paschat} 
            renderTitle = {()=>(<Shershike shershike={`${mahiti.shershike}`} vinyasa={diksoochiShershikeVinyasa}/>)}
            key={`${mahiti.shershike}`} />;
});

export default Diksoochi = () => (
      
       <Navigation navBarStyle={diksoochiVinyasa.shershikeAvarana} backButtonTintColor='#ffffff'>
         <Card 
          exact path="/" 
          component={Parividi} 
          renderTitle = {()=>(<Shershike shershike='ಋಗ್ವೇದ ಸ೦ಧ್ಯಾವ೦ದನ' vinyasa={diksoochiShershikeVinyasa}/>)}/>
         {cardsCollection}
      </Navigation>
      
  );
  