#!/bin/sh

# Merge XResources
xrdb -merge .Xresources

#Start the i3 windows manager
exec i3
