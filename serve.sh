#!/bin/bash
rvm get head
cd src && rm Gemfile.lock | true
bundle clean --force
bundle install
jekyll serve
