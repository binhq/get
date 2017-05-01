#!/bin/sh

# Build project scripts from the generic one

PROJECTS="gitbin"

echo "Building download scripts\n"

errors=0

for project in $PROJECTS; do
    printf "\033[36m%-15s\033[0m" "$project"
    sed -e "s/^#PROJECT.*/PROJECT=\"$project\"/g" \
        -e "s/\$PROJECT_/\$$(echo $project | tr '[:lower:]' '[:upper:]')_/g" \
        generic > "scripts/$project"

    if [ $? -ne 0 ]; then
        errors=$errors+1
        echo "\033[0;31m✗\033[0m"
    else
        echo "\033[0;32m✓\033[0m"
    fi
done

if [ $errors -ne 0 ]; then
    printf "\n\033[0;31m%s\033[0m\n" "Building finished with errors"
    exit 1
else
    printf "\n\033[0;32m%s\033[0m\n" "Building finished successfully"
fi
