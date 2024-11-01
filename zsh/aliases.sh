alias my_alias="echo It works!!!"

# git aliases
alias ga="git add"
alias gs="git status"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gp="git push"

# Useful aliases

# restore .bak file to current dir
restore-file() {
    backup_dir=$(realpath $(dirname $1))
    backup_file=$(basename $1)
    
    restored_file=${backup_file%*.bak}
    restored_dir=$(realpath .)

    echo "Restoring $backup_file 
    FROM: $backup_dir 
    TO:   $restored_dir"

    rsync --info=progress2 "$backup_dir/$backup_file" "$restored_dir/$restored_file"
}
