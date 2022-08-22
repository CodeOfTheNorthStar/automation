# Pull Request Automator
# $1 => base branch Example: release/automation
# $2 => origin/automation/sprint1  Example: origin/automation/sprint1
# $3 => new branch name Example: bugfix/A-1
# $4 => if you want to proceed with the commit
# $5 => add files Example: a.css 
# $6 => commit message Example: "Message"
# $7 => if you want to push
echo "Checkout $1"
git checkout $1
echo "Pulling $1 into current branch"
git pull $1
echo "Creating new branch from $1 base $2"
git checkout -b $1 $2
echo "Creating new branch $3"
git checkout -b $3
if $4 == "y" then
	echo "Adding $5"
	git add $5
	echo "Commiting $6"
	git commit -m $6
	if $7 == "y" then
		echo "Pushing into $3"
		git push origin $3
	fi
fi