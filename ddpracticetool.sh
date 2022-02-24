#!/bin/bash
DD=$HOME/.local/share/Steam/steamapps/common/devildaggers/dd
clear
while true
do

  echo "=========================================="
  echo "Devil Daggers Practice Tool"
  echo -e "\n"
  echo "1: vanilla"
  echo "2: 440 no farm"
  echo "3: 400 no farm"
  echo "4: 350 no farm"
  echo "5: 260 no farm"
  echo "6: 230 no farm"
  echo "7: 185 no farm"
  echo "8: 135 no farm"
  echo "9: 50 no farm"
  echo "10: initial setup [REQUIRED]"
  echo  " "
  echo "---------"
  echo "community spawnsets"
  echo  " "
  echo "11: pedeslayer"
  echo "12: scanner"
  echo "s: search for a spawnset from devildaggers.info"
  echo " "
  echo "q: quit" 
  echo -e "\n"
  echo "select the desired spawnset"
  read answer 
  case "$answer" in
    1) cp $DD/survivalbackup $DD/survival 
      echo "now playing vanilla"
      sleep 1.5 
      clear
      ;;
    2) if [ -e $DD/440_nofarm ]
    then cp $DD/440_nofarm $DD/survival
    else wget --quiet -O $DD/440_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_440/file
      echo "downloading 440 no farm" 
      cp $DD/440_nofarm $DD/survival
      fi
      sleep 0.5
      echo "now playing 440 no farm"
      sleep 1.5 
      clear 
      ;;
  3) if [ -e $DD/400_nofarm ]
  then cp $DD/400_nofarm $DD/survival
  else wget --quiet -O $DD/400_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_397/file
    echo "downloading 400 no farm" 
    cp $DD/400_nofarm $DD/survival
    fi
    sleep 0.5
    echo "now playing 400 no farm"
    sleep 1.5 
    clear
    ;;
  4) if [ -e $DD/350_nofarm ]
  then cp $DD/350_nofarm $DD/survival
  else wget --quiet -O $DD/350_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_350/file
  echo "downloading 350 no farm"     
  cp $DD/350_nofarm $DD/survival 
  fi
  sleep 0.5
  echo "no playing 350 no farm"
  sleep 1.5
  clear
  ;;
  5) if [ -e $DD/260_nofarm ] 
  then cp $DD/260_nofarm $DD/survival
  else wget --quiet -O $DD/260_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_259/file
    echo "downloading 260 no farm" 
    cp $DD/260_nofarm $DD/survival
    fi
    sleep 0.5
    echo "now playing 260 no farm"
   sleep 1.5
   clear
    ;;
  6) if [ -e $DD/230_nofarm ]
  then cp $DD/230_nofarm $DD/survival
  else wget --quiet -O $DD/230_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_229/file
    echo "downloading 230 no farm" 
    cp $DD/230_nofarm $DD/survival
    fi
    sleep 0.5
    echo "now playing 230 no farm"
    sleep 1.5 
    clear
    ;;
  7) if [ -e $DD/185_nofarm ]
  then cp $DD/185_nofarm $DD/survival 
  else wget --quiet -O $DD/185_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_184/file
    echo "downloading 185 no farm" 
    cp $DD/185_nofarm $DD/survival 
    fi
    sleep 0.5
    echo "now playing 185 no farm"
    sleep 1.5 
    clear
    ;;
  8) if [ -e $DD/135_nofarm ]
  then cp $DD/135_nofarm $DD/survival 
  else wget --quiet -O $DD/135_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_134/file
    echo "echo downloading 135 no farm" 
    cp $DD/135_nofarm $DD/survival 
    fi
    sleep 0.5
    echo "now playing 135 no farm"
    sleep 1.5 
    clear
    ;;
  9) if [ -e $DD/50_nofarm ]
  then cp $DD/50_nofarm $DD/survival
  else wget --quiet -O $DD/50_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_49/file
    echo "downloading 50 no farm" 
    cp $DD/50_nofarm $DD/survival
    fi
    sleep 0.5
    echo "now playing 50 no farm"
    sleep 1.5 
    clear
    ;;
  10) cp $DD/survival $DD/survivalbackup
    echo "first time setup complete"
    sleep 1.5 
    clear
    ;;
  11) if [ -e $DD/pedeslayer ]
  then cp $DD/pedeslayer $DD/survival 
  else wget --quiet -O $DD/pedeslayer https://devildaggers.info/api/spawnsets/Pedeslayer/file
    echo "downloading pedeslayer" 
    cp $DD/pedeslayer $DD/survival 
    fi
    sleep 0.5
    echo "now playing pedeslayer"
    sleep 1.5 
    clear
    ;;
  12)
    if [ -e $DD/scanner ]
    then cp $DD/scanner $DD/survival
    else wget --quiet -O $DD/scanner https://devildaggers.info/api/spawnsets/Scanner/file
    echo "downloading scanner" 
      cp $DD/scanner $DD/survival
    fi
    sleep 0.5
    echo "now plying scanner"
    sleep 1.5 
    clear
    ;;
  s) echo "what spawnset would you like to search for?"
    read search
    if [ -e $DD/$search ]
    then cp $DD/$search $DD/survival 
    else wget --quiet -O $DD/$search https://devildaggers.info/api/spawnsets/$search/file
      echo "downloading $search" 
      cp $DD/$search $DD/survival
    fi
    sleep 0.5
    echo "now playing $search"
    sleep 1.5
    clear
    ;;

  
  q) exit ;;  
 







esac 
done
sleep 5
