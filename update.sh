#! /bin/bash
# To update the website, run this script from a
# local machine with Jekyll installed and `minerl`
# in .ssh/config

git pull
JEKYLL_ENV=production jekyll build
mv _site html
rsync -rtvu --delete ./html minerl:./minerl.io/
mv html _site
