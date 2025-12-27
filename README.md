# Dotfiles Management with Git Work Tree

A clean way to version control your dotfiles without symlinks or moving files from their native locations.

## The Problem

Traditional dotfile management approaches have drawbacks:
- **Symlinks**: Complex to maintain, can break applications
- **Copy scripts**: Risk of overwriting changes, manual sync required
- **Moving files**: Breaks expected paths, requires configuration changes

## The Solution

This repository uses Git's work tree feature to track dotfiles in their original locations under `$HOME`. No symlinks, no file moving - just version control where your configs naturally live.

## How It Works

- Git repository stores metadata in a separate directory
- Work tree is set to `$HOME` so files stay in their expected locations  
- Custom alias provides easy access to Git commands for dotfile management
- Only explicitly added files are tracked (avoids noise from other home directory content)

## Setup

### 1. Create a Git repository for your dotfiles in your preferred directory
```bash
mkdir -p $HOME/dotfiles
cd $HOME/dotfiles
git init
```

### 2. Create the dotfiles function
```bash
# Add to your shell config file (e.g., ~/.zshrc)

function dotfiles() {
  /usr/bin/git --git-dir=$HOME/Repos/dotfiles/.git --work-tree=$HOME $@
}

# (optional) add dotfile aliases
alias df='dotfiles'
alias dfs='dotfiles status'
alias dfa='dotfiles add'
alias dfc='dotfiles commit -m'
alias dfp='dotfiles push'
```

Using a function instead of an alias enables parameter support - the `$@` passes all arguments to the git command, allowing you to use any git subcommand and flags naturally (e.g., `dotfiles add -p`, `dotfiles log --oneline`, `dotfiles commit -am "message"`).

### 3. Configure Git to hide untracked files
```bash
dotfiles config status.showUntrackedFiles no
```

> this command adds the following to the dotfile repo's `.git/config` file:

```bash
[status]
 	showUntrackedFiles = no
```

### 4. Configure Git to use `$HOME` as the dotfile repo's worktree
```bash
dotfiles config core.worktree $HOME
```

> this command adds the following to the dotfile repo's `.git/config` file:

```bash
[core]
	worktree = /Users/keenan # i.e. your $HOME alias value
```

### 5. Checkout the dotfiles repo
```bash
dotfiles checkout
```

## Usage
```bash
# Check status
dotfiles status

# Add new dotfiles
dotfiles add ~/.vimrc
dotfiles commit -m "Add vim configuration"
dotfiles push

# Update existing dotfiles
dotfiles add ~/.bashrc
dotfiles commit -m "Update shell aliases"
dotfiles push
```

## Benefits

- ✅ Files remain in their expected locations
- ✅ No symlink management overhead
- ✅ Full Git history and branching capabilities
- ✅ Easy to replicate across machines
- ✅ Selective file tracking (only what you choose)

---

*Inspired by [The best way to store your dotfiles: A bare Git repository explained](https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/) from Ackama.*