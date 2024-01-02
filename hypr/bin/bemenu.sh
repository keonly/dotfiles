#!/bin/sh

normal_bg="#161616E1"
normal_fg="#C6C6C6E1"
selected_bg="#525252E1"
selected_fg="#F4F4F4E1"
out_bg="#89B4FAE1"
out_fg="#B4BEFEE1"

bemenu-run \
  -p ">" \
  -c \
  -l 10 \
  -W 0.25 \
  -w \
  -R 1 \
  --binding vim \
  --fn "JetBrainsMono NerdFont 16" \
  --tb "$normal_bg" \
  --tf "$normal_fg" \
  --fb "$normal_bg" \
  --ff "$selected_fg" \
  --cb "$selected_fg" \
  --cf "$normal_bg" \
  --nb "$normal_bg" \
  --nf "$normal_fg" \
  --hb "$out_bg" \
  --hf "$normal_fg" \
  --fbb "$out_fg" \
  --fbf "$normal_bg" \
  --sb "$selected_bg" \
  --sf "$selected_fg" \
  --ab "$normal_bg" \
  --af "$normal_fg"
