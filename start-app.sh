#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the application directory
cd /C:/Users/BILOMAT/Documents/it/aws/backend/

# Install dependencies if required
echo "Installing dependencies..."
npm install

# Start the application
echo "Starting the application..."
npm start

# Log success message
echo "Application started successfully."