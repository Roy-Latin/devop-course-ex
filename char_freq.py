#!/usr/bin/python3

import sys #needed for use of linux system operations in python
import json #needed for converting the dict to json string object

str = sys.argv[1] #takes the first arg from the command line
dic  = {} #creates a dict

#check if user entered only 1 input
if len(sys.argv) != 2:
    print("Please Enter Only 1 Input")
    sys.exit(1)

#runs on the string
for char in str:
    # check if the char is already exist in the dictionary
    if char in dic:
        #if true up the number of occurencces
        dic[char] += 1
    else:
        #if false add the char to the dictionary with the value of 1
        dic[char] = 1

#turn the dict to json string object in order to enter to file 
jsonObject = json.dumps(dic)

#open the file for writing 
file_object = open("dictionar.json" , "a")

#add the text to the file and goes down a line
file_object.write(jsonObject + "\n")

#close the file
file_object.close()
