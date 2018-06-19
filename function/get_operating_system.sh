#!/usr/bin/env bash
##############################
# Exports:
# - jr_const_operating_system_debian  
#   @see jr_doc_const_operating_system_debian
#
# - jr_const_operating_system_macos  
#   @see jr_doc_const_operating_system_macos
#
# - jr_const_operating_system_unknown  
#   @see jr_doc_const_operating_system_unknown
#
# - jr_funct_get_operating_system  
#   @see jr_doc_funct_get_operating_system
##############################



alias jr_doc_const_operating_system_debian="echo \"
##########
# Return value of jr_funct_get_operating_system when OS is Debian.
# @see jr_doc_funct_get_operating_system
#
# @type String
##########\""
export jr_const_operating_system_debian="Debian"



alias jr_doc_const_operating_system_macos="echo \"
##########
# Return value of jr_funct_get_operating_system when OS is macOS.
# @see jr_doc_funct_get_operating_system
#
# @type String
##########\""
export jr_const_operating_system_macos="macOS"



alias jr_doc_const_operating_system_unknown="echo \"
##########
# Return value of jr_funct_get_operating_system when OS couldn't be recognized.
# @see jr_doc_funct_get_operating_system
#
# @type String
##########\""
export jr_const_operating_system_unknown="Unknown"



alias jr_doc_funct_get_operating_system="echo \"
##########
# Calculates the name of the current operating system.
#
# @stdout The value of one of theses variables:
#   - jr_const_operating_system_debian
#     @see jr_doc_const_operating_system_debian
#   - jr_const_operating_system_macos
#     @see jr_doc_const_operating_system_macos
#   - jr_const_operating_system_unknown
#     @see jr_doc_const_operating_system_unknown
##########\""
jr_funct_get_operating_system(){
    local os
    case $(uname -s) in
        "Linux") os="${jr_const_operating_system_debian}" ;;
        "Darwin") os="${jr_const_operating_system_macos}" ;;
        *) os="${jr_const_operating_system_unknown}" ;;
    esac
    echo -n "${os}"
}
export -f jr_funct_get_operating_system