#!/bin/sh

# Run migrations
echo "Running migrations..."
node ace migration:run --force 

# Capture the exit code of the migration command
migration_exit_code=$?

if [ $migration_exit_code -ne 0 ]; then
  echo "Migration failed with exit code $migration_exit_code. Ignoring and starting the server."
else
  echo "Migration succeeded."
fi

# Start the AdonisJS server
echo "Starting AdonisJS server..."
node /app/bin/server.js
