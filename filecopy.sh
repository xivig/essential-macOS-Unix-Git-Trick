#!/bin/bash

find . -mindepth 1 -maxdepth 10 -type d| xargs -n 1 cp -i index.php