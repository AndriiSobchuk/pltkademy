#!/bin/bash


# USER README: type the following command to run the script -> script_name <old_file>  <new_file> <dir_name>
#$1=file that we will rename
#$2=new file name
#$3=directory where files name will be changed


#check if directory exists

if [ -d $3 ]; then 
#check if file that we are going to rename exist in directory
    if [ -e $3/"$1" ]; then
#rename existing file to new one
        mv $1 $2 
    else 
        echo "Please, check your parameters again!"
    fi
else 
    echo "Sorry, such directory is not found in the system. "
fi
