#!/bin/sh

# Prompt for a user name...
echo "Please enter your name:"
read USERNAME

# Check for the file.
if [ -s ${USERNAME} ]; then
        # Read the age from the file.
        AGE=`cat ${USERNAME}`
        echo "You are $AGE years old!"
else
        # Ask the user for his/her age
        echo "How old are you?"
        read AGE

	if [ "$AGE" -le 2 ]; then
		echo "You are too young!"
	else
		if [ "$AGE" -ge 100 ]; then
			echo "You are too old!"
		else

            if [ "$AGE" -lt 20 ] || [ "$AGE" -ge 50 ]; then
              echo "Sorry, you are out of the age range."
            elif [ "$AGE" -ge 20 ] && [ "$AGE" -lt 30 ]; then
              echo "You are in your 20s"
            elif [ "$AGE" -ge 30 ] && [ "$AGE" -lt 40 ]; then
              echo "You are in your 30s"
            elif [ "$AGE" -ge 40 ] && [ "$AGE" -lt 50 ]; then
              echo "You are in your 40s"
            fi
        		# Write the age to a new file.
            echo "Hi ${USERNAME} ,your age is $AGE."
            echo "I am Going to create a text file in your name"
        		echo "Hi ${USERNAME} ,your age is $AGE." >> ${USERNAME}.txt
        	fi
        fi
fi
