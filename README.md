# Dotfiles

⚙️  Collection of configuration files for various different programs

Note: Much of this was taken from [Thomas Breydo's dotfiles](https://github.com/thomasbreydo/dotfiles). Make sure to check his [dotfiles](https://github.com/thomasbreydo/dotfiles) out as well.

## Installing on a new machine

In a POSIX-compliant shell such as `bash` or `sh`, run this command:

```bash
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --one-shot maxslarsson
```

In `fish`, run this command:

```fish
sh -c "(curl -fsLS git.io/chezmoi)" -- init --one-shot maxslarsson
```

As part of the install script, `chezmoi` will install itself with brew, not from the script.

## To save changes

In `fish` shell, run

```fish
chezmoi re-add
chezmoi update
chezmoi git push
```

Breaking it down,

- `re-add` checks for changes to the actual files (e.g. `~/.ssh/config`)

- `update` pulls and applies changes from GitHub (may need to resolve merge conflict)

- `git push` pushes changes

## TODO

- Split the one large .sh file into multiple scripts in a scripts/ directory
- My config for nvim
