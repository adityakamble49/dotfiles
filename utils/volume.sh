#!/bin/bash


regx_number='^[0-9]+$'

# check percentage
validPercentage(){
    if [[ $1 =~ $regx_number ]]
    then
        return 0
    else
        return 1
    fi
}

# print usage
printUsage(){
    echo "Usage : volume -i/-d percentage"
}

if [ $1 == '-i' ]
then
    if validPercentage $2
    then
        amixer -D pulse sset Master "$2"%+
    else
        printUsage
    fi
elif [ $1 == '-d' ]
then
    if validPercentage $2
    then
        amixer -D pulse sset Master "$2"%-
    else
        printUsage
    fi
else
    printUsage
fi
