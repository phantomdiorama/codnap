# various pre build checks using:
#
# ripgrep           https://github.com/BurntSushi/ripgrep
# typos             https://github.com/crate-ci/typos
# markdown-lint     https://github.com/igorshubovych/markdownlint-cli

Write-Host "TODOs" -foregroundcolor green
rg -i todo -tmarkdown || Write-Host "done"
Write-Host "SPELLING" -foregroundcolor green
typos && Write-Host "done"
Write-Host "LINTING" -foregroundcolor green
markdownlint *.md && Write-Host "done"
pause
