#!/bin/bash

## Create new local branch and push to remote
git co -b branch1
git push --set-upstream origin branch1

## Create new local branch and push to remote
git co -b branch2
git push --set-upstream origin branch2

## Create new local branch and DON'T push to remote
git co -b branch3

## Switch back to main
git co main

## Delete remote branch 2
git push origin --delete branch2
