#!/bin/bash

while true
do
  ./drivers/$DRIVER.sh && ./scripts/removeOlds.sh &
  sleep $DURATION
done