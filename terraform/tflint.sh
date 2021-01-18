# https://github.com/terraform-linters/tflint
cd /tmp
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" \
    > tflint.zip && unzip tflint.zip && rm tflint.zip && mv tflint ~/.local/bin

## Plugins
mkdir -p ~/.tflint.d/plugins
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint-ruleset-azurerm/releases/latest | grep -o -E "https://.+?tflint-ruleset-azurerm.linux.amd64".zip)" > tflint-ruleset-azurerm.zip && unzip tflint-ruleset-azurerm.zip && chmod +x tflint-ruleset-azurerm.zip && mv tflint-ruleset-azurerm ~/.tflint.d/plugins

#TODO AWS, GCP plugins
