# https://github.com/tfsec/tfsec
cd /tmp
curl -L "$(curl -s https://api.github.com/repos/tfsec/tfsec/releases/latest | grep -o -E "https://.+?tfsec-linux-amd64")" \
    > tfsec-linux-amd64 && chmod +x tfsec-linux-amd64 && mv tfsec-linux-amd64 ~/.local/bin/tfsec
