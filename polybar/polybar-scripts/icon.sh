#!/bin/bash

if [[ $(playerctl status) == 'Playing' ]];
  then
    echo '|| '
  else
    echo '►'
fi
