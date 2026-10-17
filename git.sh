rm -rf .git/
git init
git reflog expire --expire=now --all
git fsck --full --unreachable
git repack -A -d
git gc --aggressive --prune=now
git add .
git commit -m "$(date +' %j 天 %c')"
git remote add origin git@github.com:Potterli20/hosts.git
git push -f -u origin master
