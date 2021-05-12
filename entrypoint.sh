#!/bin/sh

theme download --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH

cd theme-files/

git config --global user.email "bradley.playdon@univarsolutions.com"
git config --global user.name "univarsc"


git checkout backup-main-theme

git add .

git commit -m "Auto backup commit"

git remote add origin 'https://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@github.com/univarsc/USC-MAIN-SITE.git'

git push
