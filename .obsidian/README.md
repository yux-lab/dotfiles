
## Create a new vault link (Windows, run as Admin)

```cmd
mklink /d "D:\obsidian\<vault-name>\.obsidian" "D:\path\to\dotfiles\.obsidian"
```

## Quick launch via shortcut
Create a shortcut with target:
```
obsidian://open?vault=VaultName
```
Replace spaces in the vault name with %20 (e.g., My%20Notes).

## Use the batch script
Set the shared config and shortcut directories:

```bat
set "OBSIDIAN_CONFIG=D:\path\to\.obsidian"
set "SHORTCUT_DIR=D:\path\to\obsidian_shortcut"
```
Place the script in the vault folder and run it. Open the folder once with Open folder as vault before using the generated shortcut.