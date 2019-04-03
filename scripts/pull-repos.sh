#!/bin/bash

mkdir -p .sources
cd .sources

for source in `cat ../.repositories.list | jq -r '.[]'`
do
    echo $source
    git clone $source
done