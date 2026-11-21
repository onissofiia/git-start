#!/bin/bash
# All of the commands I used in this assignment

# the setup on my laptop
git config --global user.name "onissofiia"
git config --global user.email "your-email@example.com"
ssh-keygen -t ed25519 -C "your-email@example.com"
cat ~/.ssh/id_ed25519.pub     # copy the output to GitHub > Settings > SSH keys
ssh -T git@github.com         # testing the connection

# moving to the folder i want my repo to be in and creating the first file in the repo
cd /Users/sofiya.aniskevich/Desktop/semestr_3/BT4BR/exercise5
git clone git@github.com:onissofiia/git-start.git
cd git-start
touch README.md
nano README.md
git status
git add README.md
git commit -m "add README with basic info"
git push -u origin main

#making a comit and then restoring the file
nano README.md
git add README.md 
git commit -m "added extra line to readme.md to later come back to earlier version of the file"
git push
git log --oneline
#78d2cd5 (HEAD -> main, origin/main) added extra line to readme.md to later come back to earlier version of the file
#8e419b3 Add a section about viewing history
#f596deb Add info about the commands to the readme file
#c3d570a added info about the structure of git to the readme.md file
#5987d75 add readme.md file with the basic info
#git diff 8e419b3 README.md 
#diff --git a/README.md b/README.md
#index 1023b77..a1053b4 100644
#--- a/README.md
#+++ b/README.md
#@@ -1,7 +1,7 @@
# # Git Tutorial
# *by Sofiya Aniskevich
# 21.11.2026*
#-
#+adding extra line
# ## Description of the repository and the files
git restore --source=8e419b3 README.md 
git add README.md 
git commit -m "Restored readme to the earlier version"
git push

#making a branch and merging it with the main one
git branch to_merge
git branch
git switch to_merge
nano README.md
git add README.md
git commit -m "Add a section about branches to the readme.md"
git push -u origin to_merge
git switch main
git merge to_merge
git push

#makig a script
nano full_script.sh
git add full_script.sh
git commit -m "Add a full script"
git push

