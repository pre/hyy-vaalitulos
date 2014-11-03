#!/usr/bin/env bash

echo "Deploying to:"
echo ""
cat _jekyll_s3.yml |grep -v '^\#' |grep s3_bucket
echo ""
echo "Continue?"
read wat

jekyll-s3
