## Clink (CMD History & Completion)
[Overview | Clink](https://chrisant996.github.io/clink/)

## File Checksums
```bash
certutil -hashfile filename MD5
certutil -hashfile filename SHA1
certutil -hashfile filename SHA256
```

## Process Management
```shell
netstat -ano | findstr :8502
tasklist | findstr 1234 # View process details
taskkill /PID 1234 /F   # Force kill
```

## File Operations

**Copy Folder Contents**
```bash
xcopy "source_path" "dest_path" /E /H /C /I
```

**Delete Folder**
```bash
rmdir /s /q "folder"
```

**Force Delete Folder (Permission Issues)**
```powershell
# Open PowerShell and navigate to directory
cd D:

# Take ownership
takeown /F 'path/to/folder' /r /d y

# Grant full access to Administrators
cacls 'path/to/folder' /t /e /g Administrators:F

# Force delete
rd 'path/to/folder' /s /q
```

**Repair Corrupted Drive (CHKDSK)**
```bash
chkdsk E: /f
```

## System Info

**Check OS Architecture (32/64-bit)**
```bash
systeminfo
```

## Archives

**Extract .tar / .tar. gz**
```bash
tar -zxvf xxx.tar.gz
tar -zxvf xxx.tar
```

## Directory Tree

```bash
# List directories only
tree

# List directories and files
tree /f

# Save to file
tree /F /A > directory_tree.txt
```

## Shortcuts & Network

**Create Symlinks**
```bash
# File link
mklink "link_file" "source_file"

# Directory link
mklink /d "link_dir" "source_dir"

# Example
mklink /d "D:\obsidian\Android\.obsidian" "D:\obsidian\.obsidian"
```

**Shutdown Timer**
```bash
shutdown -s -t 600
```

**Download Files (curl instead of wget)**
```bash
curl -O https://repo1.maven.org/maven2/com/madgag/bfg/1.13.0/bfg-1.13.0.jar
```

## Misc

**Delete Current Line**
Shortcut: `Ctrl + c`