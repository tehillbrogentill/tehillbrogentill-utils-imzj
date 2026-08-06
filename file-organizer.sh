#!/bin/bash
set -e
T="${1:-.}"
cd "$T"
for f in *.*;do
  [ -f "$f" ]||continue
  d="${f##*.}_files"
  mkdir -p "$d"
  mv "$f" "$d/"
  echo "$f -> $d/"
done
echo Done
