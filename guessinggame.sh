#!/bin/bash


congratulation() {
  echo "Félicitations ! Vous avez deviné le nombre de fichiers."
}

file_count=$(ls -1 | wc -l)

while true
do
  echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
  read guess

  if [[ $guess -eq $file_count ]]
  then
    congratulation
    break
  elif [[ $guess -lt $file_count ]]
  then
    echo "Trop bas. Réessayez."
  else
    echo "Trop haut. Réessayez."
  fi
done
