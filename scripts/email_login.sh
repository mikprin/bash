while 1; do
  #statements


  flag=0
  while [[ $flag -eq 0 ]]
    do

    NEW_USERS=( $(who |  awk '{print $1}') )

    #echo "new users: $NEW_USERS"
    for i in "${NEW_USERS[@]}"
      do
        if [[ $i != $USER ]]; then
          flag=1
          threater=$i
        fi
      done
    done
  echo "" | mutt -s "Login" -i <(echo "$threater Login") miksolo@yandex.ru
  while [[ $flag -eq 1 ]];do
    NEW_USERS=( $(who |  awk '{print $1}') )

    #echo "new users: $NEW_USERS"
    flag=0
    for i in "${NEW_USERS[@]}"
      do
        if [[ $i != $USER ]]; then
          flag=1
          threater=$i
        fi
      done
    done
  done
