#!/bin/bash
DD=$HOME/.local/share/Steam/steamapps/common/devildaggers/dd
while true
do
	clear
  print
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
    1) cp $DD/survivalbackup $DD/survival ;;
    2) if [ -e $DD/440_nofarm ]
    then cp $DD/440_nofarm $DD/survival
    else wget --quiet -O $DD/440_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_440/file
      cp $DD/440_nofarm $DD/survival
      echo "now playing 440 no farm" 
      fi ;;
  3) if [ -e $DD/400_nofarm ]
  then cp $DD/400_nofarm $DD/survival
  else wget --quiet -O $DD/400_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_397/file
    cp $DD/400_nofarm $DD/survival
    echo "now playing 400 no farm" 
    fi ;;
  4) if [ -e $DD/350_nofarm ]
  then cp $DD/350_nofarm $DD/survival
  else wget --quiet -O $DD/350_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_350/file
  cp $DD/350_nofarm $DD/survival 
  echo "now playing 350 no farm"
  fi ;;
  5) if [ -e $DD/260_nofarm ] 
  then cp $DD/260_nofarm $DD/survival
  else wget --quiet -O $DD/260_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_259/file
    cp $DD/260_nofarm $DD/survival
    echo "now playing 260 no farm" 
    fi ;;
  6) if [ -e $DD/230_nofarm ]
  then cp $DD/230_nofarm $DD/survival
  else wget --quiet -O $DD/230_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_229/file
    cp $DD/230_nofarm $DD/survival
    echo "now playing 230 no farm" 
    fi ;;
  7) if [ -e $DD/185_nofarm ]
  then cp $DD/185_nofarm $DD/survival 
  else wget --quiet -O $DD/185_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_184/file
    cp $DD/185_nofarm $DD/survival 
    echo "now playing 185 no farm" 
    fi ;;
  8) if [ -e $DD/135_nofarm ]
  then cp $DD/135_nofarm $DD/survival 
  else wget --quiet -O $DD/135_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_134/file
    cp $DD/135_nofarm $DD/survival 
    echo "now playing 135 no farm" 
    fi ;;
  9) if [ -e $DD/50_nofarm ]
  then cp $DD/50_nofarm $DD/survival
  else wget --quiet -O $DD/50_nofarm https://devildaggers.info/api/spawnsets/V3NoFarm_49/file
    cp $DD/50_nofarm $DD/survival
    echo "now playing 50 no farm" 
    fi ;;
  10) cp $DD/survival $DD/survivalbackup ;;
  11) if [ -e $DD/pedeslayer ]
  then cp $DD/pedeslayer $DD/survival 
  else wget --quiet -O $DD/pedeslayer https://devildaggers.info/api/spawnsets/Pedeslayer/file
    cp $DD/pedeslayer $DD/survival 
    echo "now playing pedeslayer" 
    fi ;;
  12)
    if [ -e $DD/scanner ]
    then cp $DD/scanner $DD/survival
    else wget --quiet -O $DD/scanner https://devildaggers.info/api/spawnsets/Scanner/file
      cp $DD/scanner $DD/survival
      echo "now playing scanner"
    fi ;;
  s) echo "what spawnset would you like to search for?"
    read search
    if [ -e $DD/$search ]
    then cp $DD/$search $DD/survival 
    else wget --quiet -O $DD/$search https://devildaggers.info/api/spawnsets/$search/file
      cp $DD/$search $DD/survival
      echo "now playing $search"
    fi
    echo "now playing $search" ;;

  
  q) exit ;;  
 







esac 
done
sleep 5
