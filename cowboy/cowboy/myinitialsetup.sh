#!/bin/bash

# Define the function to clone, switch, ... branches

perform_action_for_repo() {
    local repo_url="$1"
    local repo_path="$2"
    local target_branch="$3"
    local action="$4"
    local branch="$5"

    #printf "$1 $2 $3"
    printf "%-10s %-50s\n" "$action" "$repo_url"


    if [ "$action" = "mkfolders" ]; then
        echo "make folders"
        mkdir  "$repo_path"
        return
    fi

    if [ -d "$repo_path" ]; then
        # printf "%-50s " "$repo_url"
        # Use the 'git -C' command to switch to the target branch
        if [ "$action" = "clone" ]; then
            git clone "$repo_url" "$repo_path"
            # git clone https://github.com/mastronardif/myapp22.git  /c/FxM/fuckyou/one
        fi

        if [ "$action" = "pull" ]; then
            git -C "$repo_path" pull
            # git -C /path/to/repo1 pull
        fi

        if [ "$action" = "checkout" ]; then
            git -C "$repo_path" checkout $branch
            #git -C "$folder_path" checkout "$2"
        fi
    fi
}

# Define a list of Repos
rootFolder="/c/FxM/xyz22"
repos=(
    "https://github.com/mastronardif/myapp22.git $rootFolder/one   main"
    "https://github.com/mastronardif/myapp22.git $rootFolder/two   main"
    "https://github.com/mastronardif/myapp22.git $rootFolder/three main"
    # Add more repositories, paths, and target branches as needed
)

help=("help"
    "Getting source for xyz"
    "options:              - Sample"
    "mymkfolders           - $(basename "$0") *For safety set rootFolder "
    "myclone               - $(basename "$0") myclone "
    "mycheckout branch     - $(basename "$0") mycheckout branch"
    "mypull                - $(basename "$0") mypull "
    "myhelp                - $(basename "$0") myhelp "
)

# Add more lines for each repository you want to pull from
if [ "$1" == "mymkfolders" ]; then
    echo "Make Folders from $rootFolder"
    mkdir  $rootFolder
    for repo_entry in "${repos[@]}"; do
        read -r repo_url repo_path target_branch <<< "$repo_entry"
        perform_action_for_repo "$repo_url" "$repo_path" "$target_branch" "mkfolders"
    done
elif [ "$1" == "myclone" ]; then
    echo "clone"
    for repo_entry in "${repos[@]}"; do
        read -r repo_url repo_path target_branch <<< "$repo_entry"
        perform_action_for_repo "$repo_url" "$repo_path" "$target_branch" "clone"
    done
elif [ "$1" == "mypull" ]; then
    echo "pull"
    for repo_entry in "${repos[@]}"; do
    echo $repo_url
        read -r repo_url repo_path target_branch <<< "$repo_entry"
        perform_action_for_repo "$repo_url" "$repo_path" "$target_branch" "pull"
        # git -C $folder_path pull
    done
elif [ "$1" == "mycheckout" ]; then
    echo "checkout $2"
    for repo_entry in "${repos[@]}"; do
        read -r repo_url repo_path target_branch <<< "$repo_entry"
        # echo $repo_path
        perform_action_for_repo "$repo_url" "$repo_path" "$target_branch" "checkout" $2
        # git -C $folder_path pull
    done
elif [ "$1" == "myhelp" ]; then
    for row in "${help[@]}"; do
        # echo  "$row"
        printf "%-30s \n" "$row"
    done
else
    echo "Unknown argument. $1 type myhelp"
fi
