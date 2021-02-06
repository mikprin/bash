NEW_USERS=$(who |  awk '{print $1}')



for i in "${NEW_USERS[@]}"
do
	if $i != $USER
  echo "Threater $i"
done
