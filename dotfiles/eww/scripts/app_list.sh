#!/usr/bin/env bash

grep -R "^Name=" /usr/share/applications ~/.local/share/applicaions 2>/dev/null \
  | sed 's/.*Name=//' \
  | while read -r name; do
    file=$(grep -Rl "Name=$name" /usr/share/applications ~/.local/share/applications 2>/dev/null | head -n1)
    exec_cmd=$(grep "^Exec=" "$file" | head -n1 | sed 's/^Exec=//' | sed 's/%.*//')
    echo "$name;$exec_cmd"
  done

