git checkout node4 || exit 1 
git merge master --no-edit || exit 1 

git checkout node5 || exit 1 
git merge master --no-edit || exit 1 

git checkout node6 || exit 1 
git merge master --no-edit || exit 1 

git checkout master || exit 1
