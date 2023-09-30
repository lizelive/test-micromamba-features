
#!/usr/bin/env bash

"${@}" 2> >(
while read line; do
    echo -ne "\033[31m" 1>&2
    echo -n "${line}" 1>&2
    echo -e "\033[0m" 1>&2
done
)