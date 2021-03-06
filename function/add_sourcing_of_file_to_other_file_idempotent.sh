#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_add_sourcing_of_file_to_other_file_idempotent
#   @see jr_doc_funct_add_sourcing_of_file_to_other_file_idempotent
#
# Requires:
# - jr_funct_append_idempotent
# - jr_funct_get_absolute_path_of_parent_directory
##############################

alias jr_doc_funct_add_sourcing_of_file_to_other_file_idempotent="echo \"
##########
# Appends the sourcing of a file to another file if the file does not already get sourced in it.
#
# @param1 a path to the file to be sourced
# @param2 a path to the file in which the file should be sourced
# @return
#   - 0 when the sourcing was appended to the other file
#   - 1 when the sourcing was already contained in the other file
##########\""
jr_funct_add_sourcing_of_file_to_other_file_idempotent(){
    local fileToBeSourced="${1}"
    local sourceInFile="${2}"

    sourceString=$(cat <<//


if [ -f "${fileToBeSourced}" ]; then
    source "${fileToBeSourced}"
fi
//
    )
    touch "${sourceInFile}"
    jr_funct_append_idempotent "${sourceInFile}" "${sourceString}"
}
export -f jr_funct_add_sourcing_of_file_to_other_file_idempotent
