#!/bin/bash -e

temp_image=/tmp/i3lock.$$.${RANDOM}.png

# Take a screenshot
/usr/bin/scrot ${temp_image}

# Pixellate it 10x
/usr/bin/mogrify \
    -scale 10% \
    -scale 1000% \
  ${temp_image}

# Lock screen displaying this image.
/usr/bin/i3lock -b -p win -i ${temp_image} &

