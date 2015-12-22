#!/bin/bash

#profile arg parser
echo $1
echo $2


# if args <=1
# print ussage
#else
#call function with args

for i in $@
do
	echo $i
done

#"number of args = " + $#;
if [ $# -lt 1 ]; then
	cat <<- EOM
	This comand requires one argument:
	profile, command.
	EOM
else



# get confirmation to proceed
#echo "Okay to install?"
#echo "enter y or n"
read -p "Okay to install? Enter y or n. " installVar
echo installVar= $installVar

select inputFunction in "install" "update" "sync"
do
	echo "You selected $inputFunction"
	break
done


fi

