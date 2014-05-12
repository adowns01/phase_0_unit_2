## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
<!-- Your defnition here -->
Add a file to the git repo. You must do this before you can commit anything.

#### branch
<!-- Your defnition here -->
Branch is like a tree. If you have two ideas of where you want your code to go, you could branch your code
and try out the different directions.

#### checkout
<!-- Your defnition here -->
Checkout will switch to a specified branch. 

#### clone
<!-- Your defnition here -->
Clone is the version of your files that live offline on your computer. You should sync these with your computer when you have internet access.

#### commit
<!-- Your defnition here -->
Save your latest changes with a comment. If you ever need to, you can go back in time to view these saves.

#### fetch
<!-- Your defnition here -->
Fetching is when you look back at your recent commit, but don't merge the commit with your current version.

#### log
<!-- Your defnition here -->
Log will show a log of your recent changes made in your repo.

#### merge
<!-- Your defnition here -->
You merge two forks or branches when you apply the changes in one to the other, making them identical.

#### pull
<!-- Your defnition here -->
You can pull merge requests when you opt to merge your fork with another and your fork is the one being updated.

#### push
<!-- Your defnition here -->
Push is when you sync your files on your computer with those online.

#### reset
<!-- Your defnition here -->
Reset will remove a file from a staging area. 
#### rm
<!-- Your defnition here -->
Rm removes a file from the repo. 

#### status
Status shows a log of all files that have been changed from staging. It also provides info on the current branch and its status compared to the master branch.

## Release 4: Git Workflow

- Push files to a remote repository
git clone [url]

- Fetch changes
git remote -v
git remote add upstream [url]
git fetch upstream
git checkout master
git merge upstream/master

- Commit locally
git add
git commit -am "notes here"
git push origin master

## Release 5: Reflection
# Im still a bit intimidated using command line over the app, but I'm glad I did this 
# challenge because it does make it slightly more accessable. I think I will need to 
# consult my workflow a lot before I actually remember how to do it.
