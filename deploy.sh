#!/bin/bash
rm -Rf _site
bundle exec jekyll build
cd _site
git init
git remote add origin git@github.com:ChristopherDrum/ChristopherDrum.github.io.git
git add .
git commit -m "Deploy locally built site"
git branch -M gh-pages
git push -f origin gh-pages
rm -Rf ./github
cd ..