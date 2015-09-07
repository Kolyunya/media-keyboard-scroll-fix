#!/bin/sh
regexp="Microsoft.*pointer"
xinput list | awk '/'$regexp'/ {
  for (column = 1; column <= NF; column++) {
    if (match($column, /id=/)) {
      id = substr($column, 4)
        system("xinput set-button-map " id " 1 2 3 5 4 7 6")
    }
  }
}'
