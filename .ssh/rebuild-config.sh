#!/bin/bash

find ~/.ssh/ -type f -name '.ssh_config*' -print | xargs -I{} bash -c "echo '#>> From {}'; cat {}; echo;" | tee ~/.ssh/config
