#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"
MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi
echo -e "1) cut\n2) color\n3) perm\n4) style\n5) trim"
read SERVICE_ID_SELECTED
case $SERVICE_ID_SELECTED in
  1) cut ;;
  2) color ;;
  3) perm ;;
  4) style ;;
  5) trim ;;
  *) MAIN_MENU "I could not find that service. What would you like today?"
esac
}

cut() {
  #get customer phone number
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if customer/phone number does not exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    #get customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED") 
  SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/^ *//g')
    #ask for customer's preferred time
    echo -e "\nWhat time would you like your $SERVICE_NAME_FORMATTED, $CUSTOMER_NAME?"
    read SERVICE_TIME
    INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,$SERVICE_TIME)")
    echo -e "\nI have put you down for a $SERVICE_NAME_FORMATTED at $SERVICE_TIME, $CUSTOMER_NAME."
    MAIN_MENU "Select another appointment."
}

color() {
  #get customer phone number
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if customer/phone number does not exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    #get customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/^ *//g')

    #ask for customer's preferred time
    echo -e "\nWhat time would you like your $SERVICE_NAME_FORMATTED, $CUSTOMER_NAME?"
    read SERVICE_TIME
    INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,$SERVICE_TIME)")
    echo -e "\nI have put you down for a $SERVICE_NAME_FORMATTED at $SERVICE_TIME, $CUSTOMER_NAME."
    MAIN_MENU "Select another appointment."
}

perm() {
  #get customer phone number
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if customer/phone number does not exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    #get customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/^ *//g')

    #ask for customer's preferred time
    echo -e "\nWhat time would you like your $SERVICE_NAME_FORMATTED, $CUSTOMER_NAME?"
    read SERVICE_TIME
    INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,$SERVICE_TIME)")
    echo -e "\nI have put you down for a $SERVICE_NAME_FORMATTED at $SERVICE_TIME, $CUSTOMER_NAME."
    MAIN_MENU "Select another appointment."
}

style() {
  #get customer phone number
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if customer/phone number does not exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    #get customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/^ *//g')

    #ask for customer's preferred time
    echo -e "\nWhat time would you like your $SERVICE_NAME_FORMATTED, $CUSTOMER_NAME?"
    read SERVICE_TIME
    INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,$SERVICE_TIME)")
    echo -e "\nI have put you down for a $SERVICE_NAME_FORMATTED at $SERVICE_TIME, $CUSTOMER_NAME."
    MAIN_MENU "Select another appointment."
}

trim() {
  #get customer phone number
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if customer/phone number does not exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    #get customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED") 
  SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/^ *//g')

    #ask for customer's preferred time
    echo -e "\nWhat time would you like your $SERVICE_NAME_FORMATTED, $CUSTOMER_NAME?"
    read SERVICE_TIME
    INSERT_SERVICE_TIME=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,$SERVICE_TIME)")
    echo -e "\nI have put you down for a $SERVICE_NAME_FORMATTED at $SERVICE_TIME, $CUSTOMER_NAME."
    MAIN_MENU "Select another appointment."
}

MAIN_MENU
