# https://github.com/terraform-docs/terraform-docs
cd /tmp
curl -L "$(curl -s https://api.github.com/repos/terraform-docs/terraform-docs/releases/latest | grep -o -E "https://.+?-linux-amd64")" \
    > terraform-docs && chmod +x terraform-docs && mv terraform-docs ~/.local/bin
