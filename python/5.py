#project euler #5
#7/13/2020
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# 
# answer = ????


# Strategy: find the numbers of prime factors of all numbers from 1 to 20 
# and put them into a hashmap, storing greater number of prime factors for each factor
# then multiply it out

# create dictionary with all the prime numbers from 2 to 19 (skip 1)
import math


totaldict = {2:0, 3:0, 5:0, 7:0, 11:0, 13:0, 17:0, 19:0}
print("beginning dictionary", totaldict)
print("keys: %s" % totaldict.keys())

number = 1
#for number in range(2, 21):
while (number < 20):
	number = number + 1
	thisdict = {2:0, 3:0, 5:0, 7:0, 11:0, 13:0, 17:0, 19:0}
	remainder = number
	foundAllFactors = False
	print("-------number: ",number)
	print("this: ", thisdict)
	maxValue = number+1
	highestNumbToCheck = number
	while (foundAllFactors != True):
		checkfactor = 2
		while (checkfactor < maxValue):
		#for checkfactor in range(2, maxValue):
			print("checkfactor after: ",checkfactor)
			if (checkfactor in thisdict):
				print("found prime!",checkfactor)
				#it is prime
				remainder = highestNumbToCheck / checkfactor
				if (remainder - math.floor(remainder) == 0):
					remainder = math.floor(remainder)
					thisdict[checkfactor] = thisdict.get(checkfactor) + 1
					print("remainder IS an integer: ",remainder)
					if (remainder in thisdict):
						#add last factor
						thisdict[remainder] = thisdict.get(remainder) + 1
						#aggregate this number's factor to the totaldict
						for key in totaldict.keys():
							if(totaldict.get(key) < thisdict.get(key)):
								totaldict[key] = thisdict.get(key)
						print("total: ", totaldict)
						print("this: ", thisdict)
						#stop while loop and break out of for
						print("STOP THE LOOP")
						foundAllFactors = True
						maxValue = 0
						break
					elif (remainder == 1):
						#aggregate this number's factor to the totaldict
						for key in totaldict.keys():
							if(totaldict.get(key) < thisdict.get(key)):
								totaldict[key] = thisdict.get(key)
						print("total: ", totaldict)
						print("this: ", thisdict)
						#stop while loop and break out of for
						print("STOP THE LOOP 1")
						foundAllFactors = True
						maxValue = 0
						break
					else:
						# this number could be broken down more
						# reset for loop max value to this new one
						# reset checkfactor to beginning value
						maxValue = remainder+1
						highestNumbToCheck = remainder
						checkfactor = 1
						print("found non-prime remainder: ", remainder)
				else:
					print("remainder not an integer: ",remainder)
			checkfactor = checkfactor + 1

#multiply it out
print(totaldict)
agg = 1
for key in totaldict.keys():
	print("key: ", key , ", value: ", totaldict.get(key))
	factor = math.pow(key, totaldict.get(key))
	print("factor:", factor)
	agg *= factor
	print("agg=", agg)
print (agg)