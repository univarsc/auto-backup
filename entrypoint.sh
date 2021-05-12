#!/bin/sh

theme download --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH

cd theme-files/

git add .

git commit -m "Auto backup commit"

git push
