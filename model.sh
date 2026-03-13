#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

if [[ ! -f "artisan" ]]; then
    echo -e "${RED}Error:${NC} Artisan not found."
    exit 1
fi

FLAGS=""
while getopts "mfscrp" opt; do
    case "$opt" in
        m|f|s|c|r|p) FLAGS+=" -$opt" ;;
        *) echo "Usage: $0 [-m] [-f] [-s] [-c] [-r] [-p] ModelName"; exit 1 ;;
    esac
done

shift $((OPTIND-1))
MODEL_NAME=$1

if [[ -z "$MODEL_NAME" ]]; then
    echo -e "${RED}Error:${NC} Model name is required."
    exit 1
fi

TARGET_DIR="app/Models"
[[ ! -d "$TARGET_DIR" ]] && TARGET_DIR="app"
TARGET_FILE="${TARGET_DIR}/${MODEL_NAME}.php"

if [[ -f "$TARGET_FILE" ]]; then
    echo -e "${RED}Error:${NC} Model '$MODEL_NAME' already exists."
    exit 1
fi

echo -e "Creating: ${GREEN}$MODEL_NAME${NC} [${FLAGS:-no flags}]"

if php artisan make:model "$MODEL_NAME" $FLAGS; then
    echo -e "${GREEN}✔ Success${NC}"
else
    echo -e "${RED}✘ Failed${NC}"
    exit 1
fi