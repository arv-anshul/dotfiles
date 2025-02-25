# arv-anshul/dotfiles

My personal dotfiles managed by [`chezmoi`][chezmoi]. Just install [`chezmoi`][chezmoi] and sync the dotfiles from [my
GitHub dotfiles repo][arv-anshul/dotfiles] on a new Mac machine with a single command:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply arv-anshul
```

> See [chezmoi user guide](https://chezmoi.io/user-guide/command-overview/) to know how it works.

## Scripts Explanation

### `.chezmoiscripts`

0. `.chezmoiscripts`: This is the main directory where the shell scripts reside.
1. `run_once_before_00_init.sh`: This script is executed first, before any initialization takes place.
2. `run_once_before_01_git.sh`: This script runs before setting up Git.
3. `run_once_before_02_brew.sh`: This script is triggered before installing Homebrew.
4. `run_once_after_01_macos.sh`: This script is run after certain actions are completed on macOS.

### `$HOME/.zshrc.local`

You need to create a `$HOME/.zshrc.local` to add and maintain some miscellaneous commands for your custom usecase,
otherwise you will get message that _this file is missing_.

## Miscellaneous Stuffs

### Sync modified files with `chezmoi`

If you have edited the source file _(file in $HOME directory)_ and now if you want to sync it with `chezmoi` then use
add it using `chezmoi add $FILE` to re-add the file to `chezmoi` (or you can use `chezmoi merge`; IMO this is hectic
because you want to keep the final changes of $HOME dir file anyway).

```bash
chezmoi add path/to/file
```

> \[!TIP\]
>
> By the way, you can also **check some FAQ** regrading `chezmoi` [here][chezmoi/faq]. **Specially check first 4
> questions.**

### Microsoft Office Crack

Download & Install [`serializer`](https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a) and `MS Office 2019`
from github gist.

### Fonts

> \[!WARNING\]
>
> Do not install fonts using `brew` because it installs all the font variants but you just requires the **Regular,
> Italic, Bold and Bold Italic** variants only. So install them mannally.

- [Recursive](https://github.com/arrowtype/recursive/releases/download/v1.085/ArrowType-Recursive-1.085.zip)
  - Rec Mono Casual
  - Rec Mono Duotone
  - [RecMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Recursive.zip)
- [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)
- [Operator Mono Lig](https://github.com/arv-anshul/dotfiles/tree/main/Fonts/OperatorMonoLig)
  - [@willfore](https://github.com/willfore/vscode_operator_mono_lig.git)
- [MonoLisa](others/fonts/MonoLisa)
- [All Nerd Font List](https://www.nerdfonts.com/font-downloads)

[arv-anshul/dotfiles]: https://github.com/arv-anshul/dotfiles
[chezmoi]: https://chezmoi.io/
[chezmoi/faq]: https://www.chezmoi.io/user-guide/frequently-asked-questions/usage/
