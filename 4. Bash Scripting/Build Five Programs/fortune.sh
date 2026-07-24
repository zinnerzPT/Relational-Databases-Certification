#!/bin/bash
# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

GET_FORTUNE(){
  
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
    read QUESTION
  else
    echo Try again. Make sure it ends with a question mark:
    GET_FORTUNE
  fi
}

GET_FORTUNE

until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

N=$(( RANDOM % 6 ))

echo -e "\n${RESPONSES[$N]}"