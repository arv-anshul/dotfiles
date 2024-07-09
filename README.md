# arv-anshul/dotfiles

> \[!CAUTION\]
>
> This repository contains my personal development environment setup. Running these scripts will modify your system,
> potentially causing irreversible changes. Backups may not be complete and could overwrite existing data. **Forking the
> repository and making your own adjustments is highly recommended.** Use these scripts with extreme caution and
> understand the potential risks involved.

## Files Description

- **`install.sh`**: Run this script to install all the required packages and installations. (See
  [**Using Bash Script**](#using-bash-script) section)
- **`.zshrc`**: Configs for `zsh` cli. (It contains more than that.)
- **`.aliases`**: Contains important aliases.
- **`.config/starship.toml`**: Custom config for [starship](https://starship.rs) terminal prompt.
- **`scripts/macos.sh`**: Modify the settings of macos from terminal.
- **`scripts/*`**: `scripts/` directory contains some bash scripts which runs from `install.sh` script.

## How To Use

### Install Git

- `git` is builtin in mac if `git` is not available in your mac then run `xcode-select --install` this **may** install
  `git` in your system.
- Clone this repo using `git` command (You can download this repo too):

```bash
git clone https://github.com/arv-anshul/dotfiles.git
```

### Using Bash Script

> \[!CAUTION\]
>
> Check [`install.sh`](./install.sh) script before running it.

```bash
chmod +x ./install.sh
./install.sh
```

## Microsoft Office Crack

Download & Install [`serializer`](https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a) and `MS Office 2019`
from github gist.

## Fonts

> \[!IMPORTANT\]
>
> Do not install fonts using `brew` because it installs all the font variants but you just requires the Regular, Italic
> and Bold variants only. So install them mannally.

- [Recursive](https://github.com/arrowtype/recursive/releases/download/v1.085/ArrowType-Recursive-1.085.zip)
  - Rec Mono Casual
  - Rec Mono Duotone
  - [RecMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Recursive.zip)
- [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)
- [Operator Mono Lig](https://github.com/arv-anshul/dotfiles/tree/main/Fonts/OperatorMonoLig)
  - [@willfore](https://github.com/willfore/vscode_operator_mono_lig.git)
- [MonoLisa](Fonts/MonoLisa)
- [All Nerd Font List](https://www.nerdfonts.com/font-downloads)
