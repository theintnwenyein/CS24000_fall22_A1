#!/bin/bash
#print Hello World statement
echo "Hello World!"

# Creating variables and basic four arthematic operations with bash
let x=9
let y=3
let add=x+y
let sub=x-y
let multi=x*y
let div=x/y

# Print all the answers
printf "\n"  # Printing an empty line
echo "Basic four arthematic operations"
echo "Addition: "$x + $y "is"  $add .
echo "Subtraction: "$x - $y "is" $sub.
echo "Multiplication: "$x "*" $y "is" $multi.
echo "Division: "$x / $y "is" $div.

# Using for loop to print 0 to 4
printf "\n" # Printing an empty line
echo "Printing from 0 to 4 using for loop"
for (( i = 0; i < 5; i++))
do
	echo $i
done

# Deciding a number is even or odd by taking input from the user with conditional statements
echo -n "Please enter your name: "
read name
echo -n "Welcom $name! Please enter a number: "
read num
# If the inputted number is divisible by 2, it is even, otherwise it is odd
if [ `expr $num % 2` == 0 ]
then
	echo "It is an even number."
else
	echo "It is an odd number."
fi

# Creating a simple function with one parameter
printf "\n"  # Printing an empty line
Name() {
	echo "Nice to meet you, $1" # Printing a statment using the passed parameter value
}
Name Alex

# Creating a simple function which calculates the volume of a cuvoid whose dimenstions are 8 x 4 x 2
Cuboid_Volume() {
	let volume=$(($1*$2*$3))
	echo "Area of the triangle is: $volume"
}
Cuboid_Volume 8 4 2  # Passing the dimenstions as parameters
