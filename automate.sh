#!/bin/bash
while true; do
  gcc main.c -o main -lcurl -lcjson
  if [ $? -ne 0 ]; then
    echo "compilation error"
    exit 1
  fi
  ./main
  sleep 30
done
