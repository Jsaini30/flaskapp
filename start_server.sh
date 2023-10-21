#!/bin/bash

# Set the Flask application environment variables
export FLASK_APP=app.py
export FLASK_ENV=production

# Start the gunicorn server with 4 worker processes
gunicorn --bind 0.0.0.0:8000 --workers 1 app:app
