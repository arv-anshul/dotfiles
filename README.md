# arv-anshul/dotfiles

> \[!CAUTION\]
>
> This repository contains my personal development environment setup. Running these scripts will modify your system,
> potentially causing irreversible changes. Backups may not be complete and could overwrite existing data. **Forking the
> repository and making your own adjustments is highly recommended.** Use these scripts with extreme caution and
> understand the potential risks involved.

## Files Description

```
.
├── README.md                 # read this for instructions to follow and to understand my dotfiles
├── Taskfile.yaml             # personal @arv-anshul's Taskfile
├── install.sh                # run this to fully configure your macbook from tip-to-toe
├── .vscode/                  # files related to VSCode editor
├── .config/                  # basic config files for macos packages
    └── starship.toml         # config file for starship prompt (https://starship.rs)
├── Fonts/                    # contains favorite fonts uses while coding
├── others/                   # contains various configuration/settings files
│   ├── Stats-app.plist       # exported settings for "Stats.app" (https://github.com/exelban/stats)
│   ├── arv-anshul.rayconfig  # exported settings for "raycast.app" (https://raycast.com)
│   ├── arv-tui.terminal      # macOS's builtin terminal's theme (by @arv-anshul)
│   └── yt-enhancher.json     # exported settings of "Enhancer for YouTube" browser extension
└── scripts/                  # contains shell scripts for managing specific aspects of the development environment
    ├── brew.sh               # manages Homebrew package installations
    ├── git.sh                # basic git configs setup
    ├── macos.sh              # configure best-suited macOS settings
    └── vscode.sh             # configure global VSCode settings
```

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
