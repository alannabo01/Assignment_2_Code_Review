# A script that identifies whether user-input numbers are Armstrong numbers
# AO: Assignment 2 - Code Review 

#' Prompting user to enter three-digit number. This is assigned to the variable
#' userinput. 
userinput <- readline("Please enter a positive three-digit number: ")

# AO: The code is simple and it works correctly for prompting the user.

#' Checking if the user input is numeric, positive and three digits. An input 
#' number must fulfill all three conditions before progressing. The first
#' line checks if the input is a number using is.numeric. The second
#' checks if the number of characters in userinput is exactly 3. The third
#' converts userinput to a number, then checks if it is positive.  
if ((is.numeric(as.numeric(userinput))) &
    (nchar(userinput) == 3) &  
    (as.numeric(userinput) >= 0)) { 
  
  # AO: The code works correctly to identify the different inputs that are possible. It is also quite simple and elegant. An alternative code for this steps is:
    # if (is.na(as.integer(number))) {
    # print("Error: Input is not a numeric value.")
    # quit(save = "no")
  # The code above checks if the input is numeric, and will quit if it isn't.
    # if (number < 100 | number > 999) {
    # print("Error: Input is not a three-digit number.")
    # quit(save = "no")
    #  }
  # The code above checks to see if the integers are within the appropriate range. 
  
  #' Using strsplit to split userinput into vector of individual digits. This
  #' vector is then converted to a number and assigned to the variable splitdigits. 
  splitdigits <- as.numeric(strsplit(userinput, "")[[1]])
  # Finding the sum of cubes of the individual digits in userinput
  cubesum <- sum(splitdigits^3)
  
  # AO: The code above, paired with the code below, works efficiently to find an Armstrong number/ Narcissitic number.
  # An alternative is to use the %% function in order to determine the numbers. An example is shown below:
    # digits <- c(number %/% 100, (number %/% 10) %% 10, number %% 10)
    # narcissistic <- sum(digits^3)
  
  # Checking if cubesum is equal to userinput. If so, number is an Armstrong number.
  if ((as.numeric(userinput)) == (cubesum)) { 
    print(paste(userinput, "is an Armstrong number. How narcissistic of you!"))
  } else { 
    print(paste(userinput, "is not an Armstrong number. How humble you are!")) 
  } # Inner if-else to check if input is an Armstrong number
  
} else {
  print(paste(userinput, "is an invalid input! Entry must be a positive three-digit number. Terminating..."))
  quit()
} # Outer if-else checking for input validity
