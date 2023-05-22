#!/usr/bin/python3

txt = "aaaa"
print(txt.upper())
print(txt[::-1])
print(len(txt))

mid = int(len(txt)/2) #check the len of the string and divide by 2 for the middle char
mid_letter = txt[mid] #takes the string and extract the char in the middle of the string
txth1 = txt [0:mid] #extract the first half of the string befor the middle char
txth2 = txt [mid+1:] #extract the second half of the string after the middle char

#for checking the upper part of the code works
#print(txth1)
#print(txth2)
#print(mid_letter)


new_txt = mid_letter.replace(mid_letter , "*") #replacing only the middle char
print(txth1 + new_txt + txth2) #putting the string back together


    
