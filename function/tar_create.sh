#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_tar_create
#   @see jr_doc_funct_tar_create
##############################



alias jr_doc_funct_tar_create="echo \"
##########
# Creates a tar file
#
# @param1 a path to the destination file
# @param2-x paths of source files
# @stdout a log of the archiving process
##########\""
jr_funct_tar_create(){
    local destinationFilePath="${1}"
    local sourceFilePaths="${@:2}"
    tar -cvf "${destinationFilePath}" ${sourceFilePaths}
}
export -f jr_funct_tar_create
