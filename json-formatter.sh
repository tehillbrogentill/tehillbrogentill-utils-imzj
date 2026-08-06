#!/bin/bash
set -e
[ ! -f "${1}" ]&&echo "Usage: $0 <in> [out]"&&exit 1
if [ -n "$2" ];then python3 -m json.tool "$1">"$2";echo "-> $2"
else python3 -m json.tool "$1";fi
