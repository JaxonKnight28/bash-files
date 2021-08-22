# Jaxon Knight, Project: Bash Script ##this is a branch test

#create variables
variable1=testFile.txt
variable2=testMessage.txt
directory=testFolder/
fileList=(${variable1} ${variable2})
rm -rf ${directory}
rm -rf TXT
#check if special variable was entered
if [[ -z $1 ]]; then
    echo " ${1} is null"
    exit
fi

#take username and password input
echo "What is your username?"
read username
echo "What is your password?"
read password

#check username and password input to see if it is correct
if [[ $username == "Jaxon" ]] && [[ $password == "1234" ]]; then
    echo "Authentication accepted, thanks ${username} now lets get to that script"
else
    echo "The username or password is incorect, please try again"
    exit
fi

#start the script

#Print message to terminal that the “script is starting”.
echo "The script is staring"

#Create new directory from current directory (If ~/Desktop is the current directory then new directory would be in Desktop (e.g. ~/Desktop/newDir)
mkdir ${directory}

#Change directory to directory created in step #9.
cd ${directory}

#Print(Write) message directly to file
touch ${variable1}
echo "Hello ${username}" > ${variable1}

#Move file (defined as variable 1 in script) to the directory you started your script (i.e. ~/Desktop).
mv ${variable1} ..

#Print the working directory starting from the root.
pwd

#Change directory to the parent directory.
cd ..

#Create a new directory with the name TXT.
mkdir TXT

#Print(Write) the value of positional parameter $1 to second variable defined in script.
touch ${variable2}
echo ${1} > ${variable2}

#Move variable 1 and variable 2 to the directory TXT inside of the current directory (i.e. ~/Desktop/TXT). 
#You will call the variable here not the value of the variable. (i.e. variables are called like this ${varname})
mv ${variable1} TXT
mv ${variable2} TXT

#Delete the directory from step 9
rmdir ${directory}

#Change directory to TXT.
cd TXT

#Print file names and contents of variables to the terminal.
for files in ${fileList[@]}; do
    echo ${files} ":"
    cat ${files}
done

#Print the working directory.
pwd

#List the contents of the directory.
ls

#Print message to terminal “Script finished.
echo "Script finished"
