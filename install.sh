#!/bin/bash
echo "🚀 Installing Pterodactyl..."

# Install dependencies
apt update
apt install -y php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-bcmath

# Download panel
mkdir -p /var/www/pterodactyl
cd /var/www/pterodactyl
curl -Lo panel.tar.gz https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz
tar -xzvf panel.tar.gz

# Set permissions
chmod -R 755 storage/* bootstrap/cache/

echo "✅ Pterodactyl installed!"
echo "🌐 Access: https://${GITPOD_WORKSPACE_URL}"
