#!/bin/sh

#run date
date_now=$(date+"Year: %Y, Month: %m, Day: %d")
echo "Executino day is $date_now"
file=/app/requirements.txt

##check for venv
if ! which venv
then
    echo "create venv"
    #create venv
    python3 -m venv venvlistsorting
    #activate venv
    source ./venvlistsorting/bin/activate
    if [ -f "$file"]
    then
        #install required package
        pip install -r $file
    else
        pip install pandas
        #capture dependency in txt
        pip freeze > requirements.txt
    fi
    python3 listsortingonlength.py
    #deactivate venv
    deactivate
    #clean venv
    rm -rf venvlistsorting
else
    echo "venv available - safe to execute: "
    python3 listsortingonlength.py
    rm -rf venvlistsorting
fi

#complete status
echo "Execution completed"
