# Defining the Interpreter
#!/bin/bash

directory="/var/log/"
keyword=""

echo "enter the keyword to search: "
read keyword

echo "Keyword search in directory in progress..."

#defining for loop to search the keyword in the directory
for file in $directory/*.log; do
	if grep -n "$keyword" "$file"; then
		echo "\e[32mKeyword found in: $(basename "$file")\e[0m"
	else
		echo  "\e[31mKeyword not found\e[0m"
	fi
done
