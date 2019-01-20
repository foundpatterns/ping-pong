#!/bin/env bash

if [ $1 == "sync" ]; then
  (cd alice; peru sync) & (cd bob; peru sync)
  wait
fi

(cd alice; torchbear) & (cd bob; torchbear)