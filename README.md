# Git Asiignment
*by Sofiya Aniskevich*
*21.11.2026*

## Description of the repository and the files

This is a repository for the 5th assignment for the BT4BR class, which can later be used as a reminder of Git commands.
- **README.md** includes the explanation of the lines,that I have used during the assignment, and general information about git structure   
- **full_script.sh** file is the full list of all of the commands I have used 

## Structure of Git

Git moves my files through four places:

```
Working directory  -->  Staging area  -->  Local repository  -->  Remote repository in GitHub
  (my files)        (git add)           (git commit)           (git push)
```

- **Working directory:** the folder on my computer where I edit files
- **Staging area:** a waiting room where I choose which changes go into the next commit
- **Local repository:** the saved history of commits, stored in the hidden `.git` folder
- **Remote repository:** the copy on GitHub that I upload to (`git push`) and download from (`git pull`)

### Moving between the places
- `git add` – working directory to staging area
- `git commit` – staging area to local repository
- `git push` – local repository to remote repository

- `git pull` – remote repository to local repository and working directory
- `git clone` – remote repository to a new local copy

### Key terms
- **Commit:** a saved snapshot of the project with a message
- **Branch:** a separate line of commits for working on changes in isolation; the default branch is `main`, and a branch's changes reach it only when merged
- **Fork:** my own copy of someone else's GitHub repo; changing it on my acc does not affect the original project
- **origin:** the default name for the remote repository
- **`.git` folder:** hidden folder holding the whole history; deleting it removes the repo

