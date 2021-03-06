#!/usr/bin/env bash
##############################
# Requires:
# - jr_funct_git_get_current_branch
# - jr_funct_count_objects_in_current_directory
# - jr_var_machinename
##############################

function jr_funct_git_get_current_branch_info_or_nothing() {
    local currentBranch=$(jr_funct_git_get_current_branch)
    if [ ! -z "${currentBranch}" ]; then
        echo -n -e "on branch \033[35m${currentBranch}\033[0m "
    fi
}

PS1='--- \[\e[32m\]\u@${jr_var_machinename}\[\e[m\] in \[\e[33m\]\w\[\e[m\] (\[\e[36m\]$(jr_funct_count_objects_in_current_directory)\[\e[m\]) at \t $(jr_funct_git_get_current_branch_info_or_nothing)---\n>>> '
PS2="> "
