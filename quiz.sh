#!/bin/bash

lifeline_used=0
score=0

correct_answer() {
    echo "Correct answer! You scored 5 points!!"
    score=$(( score + 5 ))
}

wrong_answer() {
    echo "Wrong answer! You scored 0 points!!"
}

lifeline() {
    printf "Please select your preferred lifeline:
        1. Press 1 for '50-50'
        2. Press 2 for 'Change of question'\n\n"

    read -p "Key: " key

    if [ $key -eq 1 ]; then
        echo "You have selected 50-50 option"
        question=$1
        case $question in
            1) 
                printf "Option 2 and 4 are eliminated\nEnter your preferred answer: " 
                read answer
                if [ "$answer" -eq 1 ]; then
                    correct_answer
                else
                    wrong_answer
                fi
                ;;
            2)
                printf "Option 1 and 3 are eliminated\nEnter your preferred answer: " 
                read answer
                if [ "$answer" -eq 4 ]; then
                    correct_answer
                else
                    wrong_answer
                fi
                ;;
            3)
                printf "Option 3 and 4 are eliminated\nEnter your preferred answer: "
                read answer
                if [ "$answer" -eq 3 ]; then
                    correct_answer
                else
                    wrong_answer
                fi
                ;;
            4)
                printf "Option 3 and 4 are eliminated\nEnter your preferred answer: "
                read answer
                if [ "$answer" -eq 2 ]; then
                    correct_answer
                else
                    wrong_answer
                fi
                ;;
            5)
                printf "Option 2 and 4 are eliminated\nEnter your preferred answer: "
                read answer
                if [ "$answer" -eq 1 ]; then
                    correct_answer
                else
                    wrong_answer
                fi
                ;;
        esac
    elif [ $key -eq 2 ]; then
        echo "You have selected Change-of-question option"
        printf "Question) Which sorting algorithm has the best time complexity in the worst-case scenario?
        A) Bubble Sort
        B) Merge Sort
        C) Insertion Sort
        D) Quick Sort\n\nEnter your preferred answer [1/2/3/4]: "
        read answer
        if [ $answer == 2 ]; then
            correct_answer
        elif [ "$answer" -eq 1 ] || [ "$answer" -eq 3 ] || [ "$answer" -eq 4 ]; then
            wrong_answer
        fi
    else
        echo "Invalid Key"
    fi
    lifeline_used=1
}

echo "-----------------------------------------------------------------------"
echo "                      Welcome to the quiz game                         "
echo "-----------------------------------------------------------------------"
printf "Please select one of the options below to proceed:
        1. Press 1 to start the Game
        2. Press 0 to quit the Game\n"

read key
if [ $key -eq 1 ]; then
    echo "-----------------------Game Started---------------------------------"
    echo "Rules:
    1. 5 Points for correct answer
    2. 0 Points for wrong answer
    3. 2 Lifelines are available to use: '50-50', 'change of question' ( Can be used only once in a game)\n"
elif [ $key -eq 0 ]; then
    echo "Game Ended"
    exit 0
else
    echo "You have entered an invalid option"
    exit 0
fi

if [ $key -eq 1 ]; then
    printf "\n"
    echo "-----------------------------------------------------------------------"
    printf "1. What does HTML stand for?
    1) Hyper Text Markup Language
    2) High Tech Markup Language
    3) Hyperlink and Text Markup Language
    4) Home Tool Markup Language\n"
    while true; do
        printf "Enter your preferred answer [1/2/3/4] or Press 0 to use a lifeline: "
        read answer
        if [ "$answer" -eq 1 ]; then
            correct_answer
            break
        elif [ "$answer" -eq 2 ] || [ "$answer" -eq 3 ] || [ "$answer" -eq 4 ]; then
            wrong_answer
            break
        elif [ "$answer" -eq 0 ]; then
            if [ "$lifeline_used" -ne 1 ]; then 
                lifeline 1
                break
            else 
                printf "Sorry!! You have utilized a lifeline already\n" 
            fi
        else 
            echo "Invalid key"
        fi
    done

    printf "\n"
    echo "-----------------------------------------------------------------------"
    printf "2. Which of the following is not a programming language?
    1) Python
    2) HTML
    3) Java
    4) Microsoft Excel\n"
    while true; do
        printf "Enter your preferred answer [1/2/3/4] or Press 0 to use a lifeline: "
        read answer
        if [ "$answer" -eq 4 ]; then
            correct_answer
            break
        elif [ "$answer" -eq 1 ] || [ "$answer" -eq 2 ] || [ "$answer" -eq 3 ]; then
            wrong_answer
            break
        elif [ "$answer" -eq 0 ]; then
            if [ "$lifeline_used" -ne 1 ]; then 
                lifeline 2
                break
            else 
                printf "Sorry!! You have utilized a lifeline already\n" 
            fi
        else 
            echo "Invalid key"
        fi
    done

    printf "\n"
    echo "-----------------------------------------------------------------------"
    printf "3. Which data structure uses the Last In, First Out (LIFO) principle?
    1) Queue
    2) Stack
    3) Linked List
    4) Tree\n"
    while true; do
        printf "Enter your preferred answer [1/2/3/4] or Press 0 to use a lifeline: "
        read answer
        if [ "$answer" -eq 2 ]; then
            correct_answer
            break
        elif [ "$answer" -eq 1 ] || [ "$answer" -eq 3 ] || [ "$answer" -eq 4 ]; then
            wrong_answer
            break
        elif [ "$answer" -eq 0 ]; then
            if [ "$lifeline_used" -ne 1 ]; then 
                lifeline 3
                break
            else 
                printf "Sorry!! You have utilized a lifeline already\n" 
            fi
        else 
            echo "Invalid key"
        fi
    done 

    printf "\n"
    echo "-----------------------------------------------------------------------"
    printf "4. What does CSS stand for?
    1) Computer Style Sheets
    2) Cascading Style Sheets
    3) Creative Style Sheets
    4) Colorful Style Sheets\n"
    while true; do
        printf "Enter your preferred answer [1/2/3/4] or Press 0 to use a lifeline: "
        read answer
        if [ "$answer" -eq 2 ]; then
            correct_answer
            break
        elif [ "$answer" -eq 1 ] || [ "$answer" -eq 3 ] || [ "$answer" -eq 4 ]; then
            wrong_answer
            break
        elif [ "$answer" -eq 0 ]; then
            if [ "$lifeline_used" -ne 1 ]; then 
                lifeline 4
                break
            else 
                printf "Sorry!! You have utilized a lifeline already\n" 
            fi
        else 
            echo "Invalid key"
        fi
    done

    printf "\n"
    echo "-----------------------------------------------------------------------"
    printf "5. What is the purpose of a firewall in computer networks?
    1) To block unauthorized access
    2) To speed up internet connection
    3) To enhance data encryption
    4) To increase network bandwidth\n"
    while true; do
        printf "Enter your preferred answer [1/2/3/4] or Press 0 to use a lifeline: "
        read answer
        if [ "$answer" -eq 1 ]; then
            correct_answer
            break
        elif [ "$answer" -eq 2 ] || [ "$answer" -eq 3 ] || [ "$answer" -eq 4 ]; then
            wrong_answer
            break
        elif [ "$answer" -eq 0 ]; then
            if [ "$lifeline_used" -ne 1 ]; then 
                lifeline 5
                break
            else 
                printf "Sorry!! You have utilized a lifeline already\n" 
            fi
        else 
            echo "Invalid key"
        fi
    done
fi

echo "Your total Score: $score"
