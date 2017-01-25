#!/bin/bash

rvm get head
rm Gemfile.lock | true
bundle clean --force
bundle install
jekyll serve
