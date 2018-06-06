#!/bin/bash

DEFAULT="\033[0m"
BOLD="\033[1m"
UNDERLINE="\033[4m"
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BBLUE="\033[1;34m"
BLUE="\033[0;34m"
PURPLE="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"

T_PATH=printf-unit-tests
M_PATH=${T_PATH}/main
O_PATH=${T_PATH}/out
R_PATH=${T_PATH}/results
COLOR_FILE=${M_PATH}/colorft.c

exec 2> /dev/null

result()
{
	rm -f ${O_PATH}/${1}${2}.out
	gcc -I./includes ${M_PATH}/${1}${2}.c -L./ -lftprintf -o ${O_PATH}/${1}${2}.out 2> /dev/null
	${O_PATH}/${1}${2}.out > ${R_PATH}/${1}${2}.txt
}

change_color()
{
	if [ ${1} = "0" ]
	then
		sed -i -e "s/{n}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "1" ]
	then
		sed -i -e "s/{b}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "2" ]
	then
		sed -i -e "s/{c}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "3" ]
	then
		sed -i -e "s/{g}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "4" ]
	then
		sed -i -e "s/{r}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "5" ]
	then
		sed -i -e "s/{y}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "6" ]
	then
		sed -i -e "s/{o}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "7" ]
	then
		sed -i -e "s/{d}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "8" ]
	then
		sed -i -e "s/{p}/${2}/g" ${COLOR_FILE}
	elif [ ${1} = "9" ]
	then
		sed -i -e "s/{w}/${2}/g" ${COLOR_FILE}
	fi
}

color_implementation()
{
	printf "${PURPLE}make sure to write : {your_implementation}${DEFAULT}\ngive your implementation of {eoc} (033[0m)\n"
	read -r color
	change_color 0 ${color}
	printf "give your implementation of {blue} (033[0;34m)\n"
	read -r color
	change_color 1 ${color}
	printf "give your implementation of {cyan} (033[0;36m)\n"
	read -r color
	change_color 2 ${color}
	printf "give your implementation of {green} (033[0;32m)\n"
	read -r color
	change_color 3 ${color}
	printf "give your implementation of {red} (033[0;31m)\n"
	read -r color
	change_color 4 ${color}
	printf "give your implementation of {yellow} (033[1;33m)\n"
	read -r color
	change_color 5 ${color}
	printf "give your implementation of {orange} (033[0;33m)\n"
	read -r color
	change_color 6 ${color}
	printf "give your implementation of {black} (033[0;30m)\n"
	read -r color
	change_color 7 ${color}
	printf "give your implementation of {purple} (033[0;35m)\n"
	read -r color
	change_color 8 ${color}
	printf "give your implementation of {white} (033[1;37m)\n"
	read -r color
	change_color 9 ${color}
}

print_conv()
{
	if [ ${1} = "%" ]
	then
		printf "%%%${1}:\t"
	elif [ ${1} = "color" ]
	then
		printf "color:\t"
	elif [ ${1} = "fd" ]
	then
		printf "fd:\t"
	elif [ ${1} = "string" ]
	then
		printf "string:\t"
	elif [ ${1} = "apostrophe" ]
	then
		printf "' flag:\t"
	elif [ ${1} = "others" ]
	then
		printf "others:\t"
	elif [ ${1} = "wildcard" ]
	then
		printf "* flag:\t"
	else
		printf "%%${1}:\t"
	fi
}

compile()
{
	if [ ! ${1} = "color" -o ! ${1} = "r" -o ! ${1} = "b" ]
	then
		result ${1} pf
	fi
	result ${1} ft
	if [ ${1} = "fd" ]
	then
		cp ${O_PATH}/bla2.out ${R_PATH}/${1}pf.txt
		cp ${O_PATH}/bla.out ${R_PATH}/${1}ft.txt
	fi
	rm -f ${R_PATH}/${1}.diff
	if [ -e ${O_PATH}/${1}ft.out ]
	then
		DIFF=$(diff ${R_PATH}/${1}pf.txt ${R_PATH}/${1}ft.txt)
		if [ "${DIFF}" != "" ]
		then
			print_conv ${1}
			printf "${RED}>>>>>>>>>> FAILURE <<<<<<<<<<\n${DEFAULT}"
			echo "${DIFF}" > ${R_PATH}/${1}.diff
		else
			print_conv ${1}
			printf "${GREEN}>>>>>>>>>> SUCCESS <<<<<<<<<<\n${DEFAULT}"
		fi
	else
		print_conv ${1}
		printf "${CYAN}>>>>>>>>>> _ERROR_ <<<<<<<<<<\n${DEFAULT}"
	fi
}

for ARG in ${@}
do
	if [ $# -eq 0 ]
	then
		make fclean && make
	elif [ ${ARG} = "%" ]
	then
		make
		compile %
	elif [ ${ARG} = "s" ]
	then
		make
		compile s
	elif [ ${ARG} = "S" ]
	then
		make
		compile su
	elif [ ${ARG} = "p" ]
	then
		make
		compile p
	elif [ ${ARG} = "d" ]
	then
		make
		compile d
	elif [ ${ARG} = "D" ]
	then
		make
		compile du
	elif [ ${ARG} = "i" ]
	then
		make
		compile i
	elif [ ${ARG} = "o" ]
	then
		make
		compile o
	elif [ ${ARG} = "O" ]
	then
		make
		compile ou
	elif [ ${ARG} = "u" ]
	then
		make
		compile u
	elif [ ${ARG} = "U" ]
	then
		make
		compile uu
	elif [ ${ARG} = "x" ]
	then
		make
		compile x
	elif [ ${ARG} = "X" ]
	then
		make
		compile xu
	elif [ ${ARG} = "c" ]
	then
		make
		compile c
	elif [ ${ARG} = "C" ]
	then
		make
		compile cu
	elif [ ${ARG} = "f" ]
	then
		make
		compile f
	elif [ ${ARG} = "F" ]
	then
		make
		compile fu
	elif [ ${ARG} = "e" ]
	then
		make
		compile e
	elif [ ${ARG} = "E" ]
	then
		make
		compile eu
	elif [ ${ARG} = "a" ]
	then
		make
		compile a
	elif [ ${ARG} = "A" ]
	then
		make
		compile au
	elif [ ${ARG} = "g" ]
	then
		make
		compile g
	elif [ ${ARG} = "G" ]
	then
		make
		compile gu
	elif [ ${ARG} = "r" ]
	then
		make
		compile r
	elif [ ${ARG} = "b" ]
	then
		make
		compile b
	elif [ ${ARG} = "fd" ]
	then
		make
		compile fd
	elif [ ${ARG} = "n" ]
	then
		make
		compile n
	elif [ ${ARG} = "others" ]
	then
		make
		compile others
	elif [ ${ARG} = "string" ]
	then
		make
		compile string
	elif [ ${ARG} = "apostrophe" ]
	then
		make
		compile apostrophe
	elif [ ${ARG} = "wildcard" ]
	then
		make
		compile wildcard
	elif [ ${ARG} = "all" ]
	then
		make
		compile %
		compile s
		compile su
		compile p
		compile d
		compile du
		compile i
		compile o
		compile ou
		compile u
		compile uu
		compile x
		compile xu
		compile c
		compile cu
		compile others
		compile f
		compile fu
		compile e
		compile eu
		compile a
		compile au
		compile g
		compile gu
		compile n
	elif [ ${ARG} = "bonus" ]
	then
		make
		if [ ! -f $COLOR_FILE ]
		then
			cp ${M_PATH}/colorft_o.c ${COLOR_FILE}
			color_implementation
		fi
		compile color
		compile fd
		compile string
		compile apostrophe
		compile wildcard
		compile r
		compile b
	elif [ ${ARG} = "all+bonus" ]
	then
		make
		compile %
		compile s
		compile su
		compile p
		compile d
		compile du
		compile i
		compile o
		compile ou
		compile u
		compile uu
		compile x
		compile xu
		compile c
		compile cu
		compile others
		compile f
		compile fu
		compile e
		compile eu
		compile a
		compile au
		compile g
		compile gu
		compile n
		if [ ! -f $COLOR_FILE ]
		then
			cp ${M_PATH}/colorft_o.c ${COLOR_FILE}
			color_implementation
		fi
		compile color
		compile fd
		compile string
		compile apostrophe
		compile wildcard
		compile r
		compile b
	elif [ ${ARG} = "color" ]
	then
		make
		if [ ! -f $COLOR_FILE ]
		then
			cp ${M_PATH}/colorft_o.c ${COLOR_FILE}
			color_implementation
		fi
		compile color
	elif [ ${ARG} = "clean_color" ]
	then
		rm -f $COLOR_FILE
		rm -f ${M_PATH}/colorft.c-e
		rm -f ${O_PATH}/color*
		rm -f ${R_PATH}/colorft.txt
		rm -f ${R_PATH}/color.diff
	elif [ ${ARG} = "clean" ]
	then
		make fclean
		rm -f $COLOR_FILE
		rm -f ${M_PATH}/colorft.c-e
		rm -f ${O_PATH}/*
		rm -f ${R_PATH}/*ft.txt
		rm -f ${R_PATH}/*.diff
	fi
done
