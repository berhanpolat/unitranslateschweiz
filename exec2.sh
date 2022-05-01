/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
for i in $(cat brew_leaves); do; brew install "$i"; done

