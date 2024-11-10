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
alias rf=restore-file

# cd to dir on quit in lf
lf() {
    export LF_CD_FILE="/var/tmp/.lfcd-$$"
    command lf "$@"
    if [ -s "$LF_CD_FILE" ]; then
        local DIR="$(realpath -- "$(cat -- "$LF_CD_FILE")")"
        if [ "$DIR" != "$PWD" ]; then
            printf 'cd to %s\n' "$DIR"
            cd "$DIR"
        fi
        rm "$LF_CD_FILE"
    fi
    unset LF_CD_FILE
}

# cd to dir in fzf
alias cdto="cd $(find -type d | fzf)"
