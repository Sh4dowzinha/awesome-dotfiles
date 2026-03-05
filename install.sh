#!/bin/bash

rsync -avP .config/hypr/ ~/.config/hypr/
hyprctl reload
