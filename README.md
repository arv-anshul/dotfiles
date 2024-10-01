# arv-anshul/dotfiles

Install [chezmoi](https://www.chezmoi.io/) and the dotfiles from
[my GitHub dotfiles repo](https://github.com/arv-anshul/dotfiles) on a new, empty machine with a single command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install chezmoi
chezmoi init --apply arv-anshul
```

## Miscellaneous Stuffs

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
