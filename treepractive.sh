mainName=Projects

if [[ -z $1 ]]; then #-z is null, checks if it is empty
    echo "I need 1 parameter"
    exit
fi

echo ${1}


echo "who is this?"
read username
echo "what is your password"
read password

#echo > "{"name:"${username}",{"password":${password}"}" >var2
#cat ${var2}

if [[ $username == "Jaxon" ]] && [[ $password == "1234" ]]; then
    echo "welcome ${username}"
else
    echo "wrong, see ya"
    exit
fi


dirs=(SampleProject css pages about contact images icons js)

rm -rf $mainName

mkdir $mainName && cd $mainName

for dir in ${dirs[@]}; do
    echo "creating " ${dir}
        mkdir $dir
done

files=(index.html styles.css about.html about.css contact.html contact.css companyLogo.png email.png chat.png ${1} ) #index.js)

for fileName in ${files[@]}; do
    echo "creating " ${fileName}}
        touch $fileName
done

mv index.html SampleProject/
mv styles.css css/
mv about.* about/
mv contact.* contact/
mv companyLogo.png /images
mv *.png icons/
mv index.js js/
mv icons/ images/
mv about/ pages/
mv -v * SampleProject/
# ls l-
cd ..
pwd 
tree -d $mainName
tree $mainName