#!/bin/bash
set -e

# Reload systemd to pick up the new service
systemctl daemon-reload

# Optional: enable service so it starts on boot
systemctl enable zfskeyprovider.service

echo "✅ zfskeyprovider has been installed."
echo "👉 Edit /etc/zfskeyprovider.conf before starting the service:"
echo "   sudo nano /etc/zfskeyprovider.conf"
echo "Then start the service with:"
echo "   sudo systemctl start zfskeyprovider"
