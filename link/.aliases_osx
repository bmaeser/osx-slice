##############################################################################
##
##  OSX specific additions to ~/.aliases
##
##############################################################################


alias m='mate .'
alias s='subl .'
alias o='open'
alias oo='open .'

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

## local updates of brew and appstor
alias bupdate='brew update && brew upgrade'
