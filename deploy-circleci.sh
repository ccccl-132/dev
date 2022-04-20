# deploy.sh
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git config --global user.email "xxxx@126.com"
git config --global user.name "ccccl-132"
git add -A
git commit -m 'deploy [ci skip]'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:<ccccl-132>/<dev>.git master:gh-pages

rm -rf dist
cd -

