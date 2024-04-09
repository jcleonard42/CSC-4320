# load vars
li x1, 4
li x2, 7

#load temp
mv x3, x2

# move x1 to x2
mv x2, x1

# move temp to x1
mv x1, x3

nop