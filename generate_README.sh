#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-06-16 13:46:47 (UTC+0200)

func runcmd () {
    OUTPUT=$(eval $1)
    echo "\`\`\`"
    echo "$ $1\n"
    echo "$OUTPUT"
    echo "\`\`\`"
}

cat << EOF
# headtail
Print the head and tail of a file on stdout
## Install
Link \`headtail.sh\` in a directory in your \`\$PATH\`:
\`\`\`bash
ln -s \$PWD/headtail.sh \$HOME/bin/headtail
\`\`\`
## Usage
EOF

runcmd "headtail -h"
runcmd "seq 1 100 | headtail -"
runcmd "seq 1 100 | headtail -n 3 -"
runcmd "seq 1 100 | headtail -n 3 -d -"
