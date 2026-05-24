## Windows (Git Bash)
1. **Install Zsh** Download from [MSYS2 Packages](https://packages.msys2.org/packages/zsh?repo=msys&variant=x86_64). Extract the archive twice and move the contents to your `Git/` directory

2. **Set Zsh as Default Shell**
Refer to `~/.bashrc`
```bash
# vim ~/.bashrc
if [ -t 1 ]; then
  exec zsh
fi
```

3. **Install Oh My Zsh**
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

4. **Configure Plugins**
```bash
# Edit config
vim ~/.zshrc

# Install custom plugins
cd ~/.oh-my-zsh/custom/plugins
git clone <plugin-repo-url>

# Apply changes
source ~/.zshrc
```

> Reference: [Zhihu Guide](https://zhuanlan.zhihu.com/p/625583037)

## Ubuntu
```bash
# Install Zsh
sudo apt install zsh -y

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Edit configuration
vim ~/.zshrc
```