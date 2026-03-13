#!/usr/bin/env bash

ACTION=$1
ARGS="${@:2}"

if [[ "$ACTION" == "new" ]]; then
    if [[ -z "$ARGS" ]]; then
        echo "Error: Project name is required. Usage: $0 new [project-name]"
        exit 1
    fi

    composer create-project laravel/laravel "$ARGS"
    echo "------------------------------------------"
    echo "Project '$ARGS' created successfully!"
    echo "------------------------------------------"

elif [[ -f "artisan" ]]; then
    php artisan "$ACTION" $ARGS

else 
    echo "Error: 'artisan' not found and command is not 'new'."
    echo "Usage: $0 [new|artisan-command] [options]"
    exit 1
fi