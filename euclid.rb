##
# Euclidean algorithm
# calculate the greatest common divisor 
# http://en.wikipedia.org/wiki/Euclidean_algorithm
##                                    

def euclid(a, b)
	return a if b == 0
	euclid(b, a % b)
end

puts euclid(54, 18)