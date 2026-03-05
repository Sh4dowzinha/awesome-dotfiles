#!/bin/bash

rsync -avP .config/ ~/.config/

hyprctl reload
