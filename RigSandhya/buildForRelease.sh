 declare -A utfSymbols=(
   ['ಲೇಖನ']='Lekhana' 
   ['ಪುಟ']='Puta'
   ['ವಿಷಯ']='Vishaya'
   ['ವಿನ್ಯಾಸ']='Vinyasa'
   ['ಘಟ್ಟವಿನ್ಯಾಸ']='GhattaVinyasa'
   ['ವಿನಿಯೋಗ']='Viniyoga'
   ['ಶೀರ್ಷಿಕೆ']='Shershike'
   ['ಪೂರ್ವಾ೦ಗ']='Purvanga'
   ['ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ']='PratahSandhya'
   ['ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ']='PratahSamidhaDana'
   ['ಮಾಧ್ಯಾಹ್ನಿಕಸ೦ಧ್ಯಾ']='MadhyahnikaSandhya'
   ['ಸಾಯ೦ಸ೦ಧ್ಯಾ']='SayamSandhya'
   ['ಸಾಯ೦ಸಮಿಧಾದಾನ']='SayamSamidhaDana'
   ['ಯಜ್ಞೋಪವೀತ']='Yajnopaveta'
   ['ಉಪನಯನಕಾರಿಕಾ']='UpanayanaKarika'
   ['ಆಚಮನೀಯ']='Achamaneya'
   ['ಅಪರಾಧಕ್ಷಮಾಪಣ']='AparadhaKshamapana'
   ['ಹ೦ಸಶ್ಶುಚಿಷತ್']='HamsaSuchishat'
   ['ಕಾಲಾತೀತಅರ್ಘ್ಯ']='KalatetaArghya'
   ['ಮಾಧ್ಯಾಹ್ನಿಕಅರ್ಘ್ಯ']='MadhyahnikaArghya'
   ['ಪ್ರಾತರರ್ಘ್ಯ']='PratahArghya'
   ['ಸಾಯಮರ್ಘ್ಯ']='Sayamarghya'
   ['ದ್ವಿತೀಯಮಾರ್ಜನೆ']='DwiteyaMarjane'
   ['ವಿಸರ್ಜನೆ']='Visarjane'
   ['ಗಾಯತ್ರೀಮ೦ತ್ರ']='GayatriMantra'
   ['ತ್ರಿಹೃತಿ']='Trihruti'
   ['ವ್ಯಾಹೃತಿ']='Vyahruti'
   ['ಆವಾಹನ']='Avahane'
   ['ವಿಸರ್ಜನೆ']='Visarjane' )

   
 cd component
 for symbol in "${!utfSymbols[@]}"
 do
   fileNames=($(grep -rl $symbol --exclude-dir='__tests__'))
   for fileName in "${fileNames[@]}"
   do
     sed -i "s/\b${symbol}\b/${utfSymbols[${symbol}]}/g" $fileName
   done
 done
 cd ..

 cd android
 ./gradlew clean
 ./gradlew assembleRelease
 cd ..

 git checkout component
