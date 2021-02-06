NEW_USERS=$(who |  awk '{print $1}')



for i in "${NEW_USERS[@]}"
do
  echo $i
  if [[ $i != $USER ]]; then
    echo "Threater $i"
  fi


done
