#!/bin/bash
sudo apt-get install `grep Remove /var/log/apt/history.log | tail -1 | sed -e 's|Remove: ||g' -e 's|([^)]*)||g' -e 's|:[^ ]*  ||g' -e 's|,||g'` >> restore
