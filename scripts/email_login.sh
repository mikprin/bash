
NEW_USERS=( $(who |  awk '{print $1}') )

echo "new users: $NEW_USERS"

for i in "${NEW_USERS[@]}"
do
  echo $i
  if [[ $i != $USER ]]; then
    echo "Threater $i"
  fi
echo '--------------'

done
