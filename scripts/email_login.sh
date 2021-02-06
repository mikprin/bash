NEW_USERS=$(who |  awk '{print $1}')

echo "new users: $NEW_USERS"

IFS='
' read -r -a NEW_USERS_ARRAY <<< "$NEW_USERS"
echo '--------------'
echo ${NEW_USERS_ARRAY[@]}
echo '--------------'
for i in "${NEW_USERS_ARRAY[@]}"
do
  echo $i
  if [[ $i != $USER ]]; then
    echo "Threater $i"
  fi
echo '--------------'

done
