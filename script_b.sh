#!/bin/bash 


#loop to create and write the random data (with 1000 chars) into a file
for i in {1..10}
do
# FNAME var - naming new file
    FNAME="random_text_"$i".txt"
#create a file with new name
    touch $FNAME 
#write random data into a file
    cat /dev/urandom | base64 | head -c 1000 > $FNAME 
done  
