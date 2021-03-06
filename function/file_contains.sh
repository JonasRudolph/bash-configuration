#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_file_contains
#   @see jr_doc_funct_file_contains
##############################



alias jr_doc_funct_file_contains="echo \"
##########
# Checks whether a file contains a string.
# This reads the whole file into memory, so don't use this function with a big file.
#
# @param1 a path to a file (relative to cwd)
# @param2 a string (multiline works)
# @return 
#   - 0 when the given file DOES contain the given string
#   - 1 when the given file DOES NOT contain the given string
##########\""
jr_funct_file_contains(){
    local filePath="${1}"
    local string="${2}"
    [[ $(<"${filePath}") = *"${string}"* ]]
}
export -f jr_funct_file_contains