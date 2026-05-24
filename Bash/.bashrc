# Proxy for Clash (HTTP on port 7890)
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

# Set Zsh as Default Shell
if [ -t 1 ]; then
  exec zsh
fi
