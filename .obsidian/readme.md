
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