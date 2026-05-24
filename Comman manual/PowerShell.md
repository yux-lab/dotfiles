
## Extract Archives
```powershell
Expand-Archive -Path "C:\path\to\archive.zip" -DestinationPath "C:\path\to\extract\folder"
```

## Monitor GPU Usage (Real-time)
```powershell
while ($true) { nvidia-smi; Start-Sleep -Seconds 1 }
```

## Remote Connection & File Transfer

### SSH Connect to Linux
```powershell
# -p specifies the port
ssh root@192.168.*.* -p <port>
```

### SCP: Windows to Linux
```powershell
# Single file
scp -P 2222 .\data.sqf username@ip:/mnt/data/Dataset_ZIP

# Directory (recursive) with bandwidth limit (8192 Kbit/s)
scp -r -P 22 -l 8192 "D:\datasets\" username@ip:/mnt/data/

# Recursive directory transfer
scp -r -P 2222 .\data_folder username@ip:/mnt/data/destination
```

### SCP: Linux to Windows
```powershell
# Source: Linux path, Destination: Windows path
scp -P 22 -r username@ip:/mnt/Data/ D:\
```

### SFTP
Reference: [Windows 10 PowerShell SFTP Guide](https://blog.csdn.net/qq_29761395/article/details/119772435)