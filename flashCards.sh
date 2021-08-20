# while :; do echo $RANDOM && sleep 5; done  ##random number generating looop
# echo $RANDOM ##RANDOM is a function that returns a random number
# echo $((RANDOM % 50)) ## '% 50' limits the generator so that it won't return a number higher than 50

#This is a test for github desktop
#start match game
##declare variables

# color variables
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

if [[ -z $1 ]]; then
    echo "You must pass me a value eg: (add, sub, mult, div, hard)"
    exit
fi

function addition() {
    green='\033[0;32m'
    gray='\033[0;37m'
    red='\033[0;31m'
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    sum=$(echo $((${num1} + ${num2})))
    echo ${GREEN}"What is ${num1} + ${num2}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        #easy mode stuff here
        echo "Hint: ${sum}"
        ;;
    [nN][oO] | [nN])
        #no easy mode
        echo "You are a math pro, good luck"
        ;;
    *)
        echo ""
        exit 1
        ;;
        esac
    echo "Answer: "
    read answer
    ##echo ${sum}
    #echo "What is ${num1} + ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo ${red}"Wrong"${gray}
        total=${#score[@]} ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    addition
}

function subtraction() {
    green='\033[0;32m'
    gray='\033[0;37m'
    red='\033[0;31m'
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    if [[ ${num1} -gt ${num2} ]]; then
        sum=$(echo $((${num1} - ${num2})))
        echo ${GREEN}"What is ${num1} - ${num2}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
        case $input in
            [yY][eE][sS] | [yY])
            #easy mode stuff here
               echo "Hint: ${sum}"
               ;;
            [nN][oO] | [nN])
                #no easy mode
               echo "You are a math pro, good luck"
              ;;
          *)
              echo ""
             exit 1
             ;;
        esac
     echo "Answer: "
     read answer
        #echo ${sum}
        #echo "What is ${num1} - ${num2}" && read answer
    else
        sum=$(echo $((${num2} - ${num1})))
                echo ${GREEN}"What is ${num2} - ${num1}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
        case $input in
            [yY][eE][sS] | [yY])
            #easy mode stuff here
               echo "Hint: ${sum}"
               ;;
            [nN][oO] | [nN])
                #no easy mode
               echo "You are a math pro, good luck"
              ;;
          *)
              echo ""
             exit 1
             ;;
        esac
     echo "Answer: "
     read answer
        #echo ${sum}
        #echo "What is ${num2} - ${num1}" && read answer
    fi

    if [[ ${answer} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo ${red}"Wrong"${gray}
        total=${#score[@]} ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    subtraction
}

function multiply() {
    green='\033[0;32m'
    gray='\033[0;37m'
    red='\033[0;31m'
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    sum=$(echo $((${num1} * ${num2})))
    echo ${GREEN}"What is ${num1} * ${num2}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        #easy mode stuff here
        echo "Hint: ${sum}"
        ;;
    [nN][oO] | [nN])
        #no easy mode
        echo "You are a math pro, good luck"
        ;;
    *)
        echo ""
        exit 1
        ;;
        esac
    echo "Answer: "
    read answer
    #echo ${sum}
    #echo "What is ${num1} * ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo ${red}"Wrong"${gray}
        total=${#score[@]} ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    multiply
}

function divide() {
    green='\033[0;32m'
    gray='\033[0;37m'
    red='\033[0;31m'
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    if [[ ${num1} -gt ${num2} ]]; then
        sum=$(echo $((${num1} / ${num2})))
        echo ${GREEN}"What is ${num1} / ${num2}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
        case $input in
        [yY][eE][sS] | [yY])
            #easy mode stuff here
            echo "Hint: ${sum}"
            ;;
        [nN][oO] | [nN])
            #no easy mode
            echo "You are a math pro, good luck"
            ;;
        *)
            echo ""
            exit 1
            ;;
        esac
        echo "Answer: "
        read answer
        #echo ${sum}
        #echo "What is ${num1} / ${num2}" && read answer
    else
        sum=$(echo $((${num2} / ${num1})))
        echo ${GREEN}"What is ${num2} / ${num1}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
        case $input in
    [yY][eE][sS] | [yY])
        #easy mode stuff here
        echo "Hint: ${sum}"
        ;;
    [nN][oO] | [nN])
        #no easy mode
        echo "You are a math pro, good luck"
        ;;
    *)
        echo ""
        exit 1
        ;;
     esac
     echo "Answer: "
     read answer
        #echo ${sum}
        #echo "What is ${num2} / ${num1}" && read answer
    fi

    if [[ ${answer} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo ${red}"Wrong"${gray}
        total=${#score[@]} ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    divide
}

function hardMath() {
    green='\033[0;32m'
    gray='\033[0;37m'
    red='\033[0;31m'
    num1=$(echo $((RANDOM % 100)))
    num2=$(echo $((RANDOM % 100)))
    sum=$(echo $((${num1} + ${num2})))
    echo ${GREEN}"What is ${num1} + ${num2}? Do you want easy mode?"${LIGHTGRAY} && read -r -p "[Y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        #easy mode stuff here
        echo "Hint: ${sum}"
        ;;
    [nN][oO] | [nN])
        #no easy mode
        echo "You are a math pro, good luck"
        ;;
    *)
        echo ""
        exit 1
        ;;
        esac
    echo "Answer: "
    read answer
    #echo ${sum}
    #echo "What is ${num1} + ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo ${green}"nice job"${gray}
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo ${red}"Wrong"${gray}
        total=${#score[@]} ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    hardMath
}

case ${1} in
add)
    addition
    ;;
sub)
    subtraction
    ;;
mult)
    multiply
    ;;
div)
    divide
    ;;
hard)
    hardMath
    ;;
esac
