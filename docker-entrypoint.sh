#!/usr/bin/env sh

is_pipe() {
  if [ -p /dev/stdin ]; then
    return 0
  else
    return 1
  fi
}

{
  if is_pipe; then
    cat \
      | exiftool -X "/dev/stdin"
  else
    exiftool -X "${@}"
  fi
} \
  | xml2json \
    --strip_namespace \
    --strip_newlines \
    --strip_text \
  | jq .RDF.Description
