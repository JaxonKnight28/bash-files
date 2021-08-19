firstNames=(Bryce Indigo Jake Todd)
lastNames=(Day3 Montoya TheSnake Ler)

for ((i = 0; i < ${#firstNames[@]}; ++i)); do
echo "first=${firstNames[i]} last=${lastNames[i]}"
done