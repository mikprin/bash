NEW_USERS=$(who |  awk '{print $1}')

IFS='
' read -r -a NEW_USERS_ARRAY <<< "$NEW_USERS"

for i in "${NEW_USERS_ARRAY[@]}"
do
  echo $i
  if [[ $i != $USER ]]; then
    echo "Threater $i"
  fi


done
