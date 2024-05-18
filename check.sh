#!/usr/bin/env bash
#
# various pre build checks using:
# ripgrep           https://github.com/BurntSushi/ripgrep
# typos             https://github.com/crate-ci/typos
# markdown-lint     https://github.com/igorshubovych/markdownlint-cli

echo "TODOs"
rg -i todo -tmarkdown || echo "done"
echo "SPELLING"
typos &&  echo "done"
echo "LINTING"
markdownlint *.md && echo "done"
read -rp "press any key"
