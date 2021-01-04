mkdir -p ~/.local/bin
echo "Downloading release..."
curl -s https://api.github.com/repos/minamijoyo/tfschema/releases/latest \
    |  grep "browser_download_url.*linux_amd64\.tar\.gz" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi - -O /tmp/tfschema.tar.gz &&

    echo "Extracting files..."
    tar -xf /tmp/tfschema.tar.gz --directory /tmp/ &&
    mv /tmp/tfschema ~/.local/bin/ &&
    hash -r &&
    tfschema -install-autocomplete


mkdir -p ~/.terraform.d/plugins
cd /tmp

cat <<EOF > main.tf
provider aws {}
provider azurerm {}
provider google {}
EOF

terraform init &&
    mv .terraform/providers/registry.terraform.io/hashicorp/*/*/*/* ~/.terraform.d/plugins
