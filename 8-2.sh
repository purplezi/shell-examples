#!/usr/bin/env bash

pi=$(echo "scale=10; 4*a(1)" | bc -l)

pip=$(bc -l <<< "scale=1000; 4*a(1)")
