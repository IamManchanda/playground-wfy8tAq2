#!/bin/bash

cd /project/target
sass $1.scss $1.css

echo "CG> open --static-dir /project/target/ /$1.html"