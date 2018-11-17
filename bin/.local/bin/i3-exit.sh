#!/bin/sh

exec i3-nagbar -t warning -m 'Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'