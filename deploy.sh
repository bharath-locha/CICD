#!/bin/bash
echo "Starting deployment..."
sudo pkill -f app.py
nohup python3 app.py > output.log 2>&1 &
echo "Deployment completed."
