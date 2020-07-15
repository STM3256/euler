# Optimum polynomial #101
# 7/14/2020

# find the sum of FITs for the BOPs with the following polynomial
# un = 1 − n + n2 − n3 + n4 − n5 + n6 − n7 + n8 − n9 + n10

# strategy:
# crawl through n>0 to n=11 to create correct sequence of values
# create a function based on these values depending on their exponent 
# use function to find the FIT of that series 
# add all the FITs
# store the equations in an array such that the index represents the exponent
# of the variable, and the value is the value of the root in the form:
# Fun(0) = Coef => equation0 = [coef]
# Fun(x^2) = Coef(x-root[index1])(x-root[index2]) => equation2 = [coef, root1, root2]

