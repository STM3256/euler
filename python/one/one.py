#project euler #1
#7/13/2020
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# answer = 233168

sum = 0
for x in range(1, 1000):
	print(x)
	if ((x%3==0) or (x%5==0)):
		sum+=x
	
print("the total is: ", sum)