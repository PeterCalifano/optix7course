#!/bin/bash

# Run the Python script and capture its output
ADJUSTED_PATH=$(python "${1}" "${2}")
echo "Adjusted Path: $ADJUSTED_PATH"

# Export the environment variable
export ADJUSTED_PATH

# Execute the next command passed as arguments
#exec "${@:3}"
