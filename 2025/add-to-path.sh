#!/bin/bash
# For a Bash profile script.

# Add a component to $PATH
# before any /usr/* directories
# if it's not already in $PATH
add_to_path() {
  local d f=add_to_path
  for d; do
	[ -d "$it" ] || {
		>&2 echo "$f warning: No directory $it"
                continue
        }
	case ":$PATH:" in
	   "*:$d:*") ;;
	   *) export PATH="${PATH/:\/usr\//:$d:/usr/}" ;;
	esac
  done
}
