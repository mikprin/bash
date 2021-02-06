NEW_USERS=$(who |  awk '{print $1}')

printf '%s\n' "${NEW_USERS[@]}"
