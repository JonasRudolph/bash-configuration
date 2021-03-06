#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_count_objects_in_current_directory
#   @see jr_doc_funct_count_objects_in_current_directory
##############################

alias jr_doc_funct_count_objects_in_current_directory="echo \"
##########
# Outputs the number of objects (files, links directories) in the current directory
##########\""
jr_funct_count_objects_in_current_directory(){
    ls -A1 | wc -l | tr -d '[[:space:]]'
}
export -f jr_funct_count_objects_in_current_directory