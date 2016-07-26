#!/usr/bin/env bash

function pid() {
  proc=$("ps aux | grep $1")
  if [ -z "$2" ] then
    proc=$("$proc | grep $2")
  fi
  echo $("$proc | awk '{print $2}'")
}
