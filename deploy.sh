rm -rf ./*/logs
git add -A
git commit -m 'auto-deploy'

git pull
git push  origin master
echo Auto-Deploy-Complete!
