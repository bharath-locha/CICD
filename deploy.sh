#!/bin/bash

echo "Starting deployment..."

# Navigate to project directory
cd /home/ec2-user/Cloud_Devops || exit 1

# Kill previous Flask app if running
sudo pkill -f app.py || true

# Install dependencies
pip3 install -r requirements.txt

# Start Flask app
nohup python3 app.py > output.log 2>&1 &

echo "Deployment completed."
