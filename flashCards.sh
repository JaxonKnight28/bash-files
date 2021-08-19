# while :; do echo $RANDOM && sleep 5; done  ##random number generating looop
# echo $RANDOM ##RANDOM is a function that returns a random number
# echo $((RANDOM % 50)) ## '% 50' limits the generator so that it won't return a number higher than 50

#start match game
##declare variables


function addition () {
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    sum=$(echo $((${num1} + ${num2})))
    echo ${sum}
    echo "What is ${num1} + ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo "nice job"
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo "Wrong"
        total=${#score[@]}  ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    addition
}

function subtraction () {
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    sum=$(echo $((${num1} - ${num2})))
    echo ${sum}
    echo "What is ${num1} - ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo "nice job"
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo "Wrong"
        total=${#score[@]}  ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    subtraction
}

function multiply () {
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    sum=$(echo $((${num1} * ${num2})))
    echo ${sum}
    echo "What is ${num1} * ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo "nice job"
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo "Wrong"
        total=${#score[@]}  ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    multiply
}

function divide () {
    num1=$(echo $((RANDOM % 50)))
    num2=$(echo $((RANDOM % 50)))
    sum=$(echo $((${num1} / ${num2})))
    echo ${sum}
    echo "What is ${num1} / ${num2}" && read answer

    if [[ ${answer} == ${sum} ]]; then
        echo "nice job"
        score+=(1)
        total=${#score[@]}
        echo "Score is" ${total}
        echo ""
    else
        echo ""
        echo "Wrong"
        total=${#score[@]}  ## '#' counts the length of the array
        echo "Final Score " ${total}
        exit
    fi
    divide
}

case ${1} in
    add)
        addition;;
    sub)
        subtraction;;
    mult)
        multiply;;
    div)
        divide;;
esac