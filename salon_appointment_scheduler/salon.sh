#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"
TRUNCATE_TABLES=$($PSQL "TRUNCATE appointments, customers")

SERVICES_MENU() {
  
  if [[ $1 ]]
  then
    echo -e $1
  else
    echo -e "\nWelcome to My Salon, how can I help you?"
  fi

  # MENU DE SERVICIOS
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # SELECCION DE SERVICIO
  read SERVICE_ID_SELECTED

  if [[ $SERVICE_ID_SELECTED =~ [1-3] ]]
  then

    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    # Si el cliente no esta registrado
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
    fi

    echo -e "\nWhat time would you like your cut, Fabio?"
    read SERVICE_TIME


  else # Si no esta entre las opciones 
    SERVICES_MENU "\nI could not find that service. What would you like today?"
  fi

}



SERVICES_MENU