#!/bin/bash
export JEKYLL_ENV=development
rvm get head
cd src && rm Gemfile.lock | true
bundle clean --force
bundle install
jekyll serve
