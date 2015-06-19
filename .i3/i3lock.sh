#!/bin/bash -e

temp_image=/tmp/$$.${RANDOM}.screen_locked.png

# Take a screenshot
scrot ${temp_image}

# Pixellate it 10x
mogrify \
    -scale 10% \
    -scale 1000% \
  ${temp_image}

# Lock screen displaying this image.
i3lock -b -p win -i ${temp_image} &

