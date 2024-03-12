# arv-anshul/dotfiles

<details>
<summary>😱 Important Note Before Installation</summary>

> 📋 Copied from [**@CoreyMSchafer/dotfiles**](https://github.com/CoreyMSchafer/dotfiles/blob/17dff1bbd8d6e4909800e163c16f6991f9fcc68d/README.md?plain=1#L17-L31)

The configurations and scripts in this repository are **HIGHLY PERSONALIZED** to my own preferences and workflows. If you decide to use them, please be aware that they will **MODIFY** your current system, potentially making some changes that are **IRREVERSIBLE** without a fresh installation of your operating system.

Furthermore, while I strive to backup files wherever possible, I cannot guarantee that all files are backed up. The backup mechanism is designed to backup SOME files **ONCE**. If the script is run more than once, the initial backups will be **OVERWRITTEN**, potentially resulting in loss of data. While I could implement timestamped backups to preserve multiple versions, this setup is optimized for my personal use, and a single backup suffices for me.

If you would like a development environment similar to mine, I highly encourage you to fork this repository and make your own personalized changes to these scripts instead of running them exactly as I have them written for myself.

A less serious (but potentially annoying) change it will make is setting the Desktop background to the image I use in my tutorials. This is the script I use to set up machines I will be recording on, after all.

I likely won't accept pull requests unless they align closely with my personal preferences and the way I use my development environment. But if there are some obvious errors in my scripts then corrections would be welcome!

If you choose to run these scripts, please do so with **EXTREME CAUTION**. It's recommended to review the scripts and understand the changes they will make to your system before proceeding.

By using these scripts, you acknowledge and accept the risk of potential data loss or system alteration. Proceed at your own risk.

</details>

## Files Description

- **`install.sh`**: Run this script to install all the required packages and installations. (See [**Using Bash Script**](#using-bash-script) section)
- **`.zshrc`**: Configs for `zsh` cli. (It contains more than that.)
- **`Makefile`**: Use `make` command to install specific package.
- **`aliases.sh`**: Contains important aliases.
- **`.config/starship.toml`**: Custom config for [starship](https://starship.rs) terminal prompt.
- **`scripts/macos.sh`**: Modify the settings of macos from terminal.
- **`scripts/*`**: `scripts/` directory contains some bash scripts which runs from `install.sh` script.

## How To Use

### Install Git

- `git` is builtin in mac if `git` is not available in your mac then run `xcode-select --install` this **may** install `git` in your system.
- Clone this repo using `git` command (You can download this repo too):

```bash
git clone https://github.com/arv-anshul/dotfiles.git
```

### Using Makefile

- List all **`make`** commands using:

```bash
make help
```

- Then, run only required one in your system to install specific package.

```bash
# Example:
make brew  # Install brew
make spotify-mod  # Install SPOT-X for spotify
```

### Using Bash Script

> \[WARNING\]
>
> Check [`install.sh`](./install.sh) script before running it.

```bash
chmod +x ./install.sh
./install.sh
```

**-------- OR --------**

Run `install.sh` script using `make` command

```bash
make install
```

## Microsoft Office Crack

Download & Install [`serializer`](https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a) and `MS Office 2019` from github gist.

## Fonts

> \[!CAUTION\]
>
> If you are using `brew` to install fonts then make sure you have ran the `brew tap homebrew/cask-fonts` earlier 🤓.

- **JetBrains Mono Nerd Font**: Install using `brew install homebrew/cask-fonts/font-jetbrains-mono-nerd-font`.
- **Operator Mono Lig**: another awesome coding font. Download from [_@willfore_](https://github.com/willfore/vscode_operator_mono_lig.git) or from [Fonts](https://github.com/arv-anshul/dotfiles/tree/main/Fonts/OperatorMonoLig) directory.
- **Poppins**: Install using `brew install homebrew/cask-fonts/font-poppins`.
- **MonoLisa**: Download from [Fonts](https://github.com/arv-anshul/dotfiles/tree/main/Fonts/MonoLisa) directory.
