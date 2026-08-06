#!/bin/bash
for f in "${@:-*.txt}";do
  [ -f "$f" ]||continue
  printf "%-40s L=%s W=%s C=%s\n" "$f" $(wc -l<"$f") $(wc -w<"$f") $(wc -m<"$f")
done
