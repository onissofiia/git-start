# Git Tutorial
*by Sofiya Aniskevich
21.11.2026*
adding extra line
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

## Setting up (once per computer)

1. Set the name and email on your commits:
```bash
git config --global user.name "your_username"
git config --global user.email "your@email"
```
`--global` applies the setting to your whole user account, not just one repository.

2. Create an SSH key to pair your computer with GitHub:
```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
```
The public key is saved in `~/.ssh/id_ed25519.pub`.

3. Print the public key, copy the output, and add it at GitHub → Settings → SSH and GPG keys → New SSH key:
```bash
cat ~/.ssh/id_ed25519.pub
```

4. Test the connection:
```bash
ssh -T git@github.com
```
The output should be: `Hi your_username! You've successfully authenticated, but GitHub does not provide shell access.`

## Cloning the repository

1. Create the repository on GitHub and copy its SSH link, which looks like this: `git@github.com:your_username/repository.git`
2. Go to the folder you want to work in:
```bash
cd path/to/folder
```
3. Clone the repository. It will be created inside the folder you are currently in:
```bash
git clone <ssh_url>
```
4. Enter the new repository folder:
```bash
cd repository
```

## Making your first commit

1. Create or change a file
2. Check what has changed:
```bash
git status
```
3. Stage a file for the commit:
```bash
git add your-file
```
4. Save a snapshot locally:
```bash
git commit -m "message"
```
5. Upload the commit to GitHub:
```bash
git push
```
> ## The main idea
>
> - `add` stages changes
> - `commit` saves them
> - `push` uploads them


## Viewing history and going back to an older version

### Print all commits
```bash
git log --oneline
```
Each line is one commit: a short ID (hash) and its message. Newest is at the top. Press `q` to leave the list.
- `git log` – full history with author and date
- `git log --oneline -- file_name` – history of one file only
- `git show <hash>` – what a specific commit changed

### Restore a file to an earlier version
1. Find the commit from before the change:
```bash
git log --oneline -- file_name
```
2. Optionally compare it with the current file:
```bash
git diff <hash> file_name
```
3. Restore the file from that commit:
```bash
git restore --source=<hash> file_name
```
4. Save the restored version as a new commit and upload it:
```bash
git add file_name
git commit -m "message"
git push
```

### Other ways to go back
- `git restore README.md` – discard changes I have not committed yet
- `git revert <hash>` – undo a whole commit by creating a new commit that reverses it; the history stays intact
- `git switch main` – return to the latest version after looking at an old commit with `git checkout <hash>`

### Warning
- `git reset --hard <hash>` deletes all later changes permanently, so I avoid it unless I am sure
