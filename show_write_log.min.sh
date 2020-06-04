#!/bin/sh

LOG_FILE="/root/a.txt"

# Color variables
REMOVE='\e[0m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
WHITE='\e[39m'

# Show & write log
show_write_log(){
    if [ ${SUM_ARG} -eq ${OPTIND} ]
    then
        printf "$1${OPTARG}${REMOVE}""\n" | tee -a ${LOG_FILE}
    else
        printf "$1${OPTARG}${REMOVE}" | tee -a ${LOG_FILE}
    fi
}

# Main function
_main(){
    OPTIND=1
    SUM_ARG=$(($#+1))
    while getopts 'r:g:y:w:d' OPTION
    do
      case ${OPTION} in
        d)  show_write_log "`date "+[ %d/%m/%Y %H:%M:%S ]"`" ;;
        r)  show_write_log "${RED}" ;;
        g)  show_write_log "${GREEN}" ;;
        y)  show_write_log "${YELLOW}" ;;
        w)  show_write_log "${WHITE}" ;;
      esac
    done
}

# Example
_main -d -r " 1" -g " 2" -y " 3" -w " 7"
# Output: [ 03/06/2020 14:12:14 ] 1 2 3 7

_main -d -w " [" -r REMOVE -w "]" -w " Remove all disk space"
# Output: [ 03/06/2020 14:12:14 ] [REMOVE] Remove all disk space
