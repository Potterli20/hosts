rm -rf .git/
git init
git gc --auto
git add .
git commit -m "$(date +' %j 天 %c')"
git remote add origin git@github.com:Potterli20/hosts.git
git push -f -u origin master
