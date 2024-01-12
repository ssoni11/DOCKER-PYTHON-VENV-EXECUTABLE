#!/bin/sh

#run date
date +"Execution time stamp: YYYY:%Y-MM:%m-DD:%d-%HH%MM%SS">>log.txt
echo "--------------------------------------"
echo "Check log.txt for execution timestamp."
echo "--------------------------------------"
file=/app/requirements.txt

##check for venv
if ! which venv
then
    echo "create venv"
    
    python3 -m venv venvlistsorting
    
    source ./venvlistsorting/bin/activate
    if [ -f "$file"]
    then
        
        pip install -r $file
    else
        pip install pandas
        
        pip freeze > requirements.txt
    fi
    python3 listsortingonlength.py
    
    deactivate
    
    rm -rf venvlistsorting
else
    echo "venv available - safe to execute: "
    python3 listsortingonlength.py
    rm -rf venvlistsorting
fi


echo "Execution completed"
