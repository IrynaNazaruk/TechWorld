# Version Control

## Git Commands

   
| Git basic command | |
|--|--|
|`git innit {directory}`|Create empty Git repo in specified directory.|
|`git clone {repo}`|Clone repo located at onto local machine.|
|`git commit -m -S "{message}"`|Commit the staged snapshot securely with commit message|
|`git status`|List which files are staged, unstaged, and untracked|
|`git log`|Display the entire commit history using the default format.|
|`git diff`|Show unstaged changes between your index and working directory.|
|`git revert {commit}`|Create new commit that undoes all of the changes made in {commit}|
|`git reset {file}`|Remove {file} from the staging area, but leave the working directory unchanged. This unstages a file without overwriting any changes|
|`git clean -n`|Shows which files would be removed from working directory.|
|`git branch`|List all of the branches in your repo.|
|`git checkout -b {branch}`|Create and check out a new branch named {branch}|
|`git pull {remote}`|Fetch the specified remote’s copy of current branch and immediately merge it into the local copy.|
|`git push {remote} {branch}`|Push the branch to {remote}, along with necessary commits and objects.|
|

 ## Additional Options 
 
| Git command |  |
|--|--|
| `git config --global user.namee {username} `| Define the author name to be used for all commits by the current user. |
|`git config --global user.email`| Define the author email to be used for all commits by the current user.|
|`git config --global alias {alias-name} {command}`|Create shortcut for a Git command.|
|`git config --global --edit`|Open the global configuration file in a text editor for manual editing. git config|
|`git diff HEAD`|Show difference between working directory and last commit.|
|`git diff --cached`|Show difference between staged changes and last commit|
|`git reset`|Reset staging area to match most recent commit, but leave the working directory unchanged.|
|`git reset --hard {commit}`|Resets both the staging area & working directory to match. Deletes uncommitted changes, and all commits after {commit}|
|`git push {remote} --force`|Forces the git push even if it results in a non-fast-forward merge. Do not use the --force flag unless you’re absolutely sure you know what you’re doing.|
|`git push {remote} --tags`|The --tags flag sends all of your local tags to the remote repo.|
|

More git usecases can be found here: https://github.com/k88hudson/git-flight-rules/blob/master/README.md