#!/usr/bin/ruby1.9
# vim:set ts=2 sw=2:

# The sequence of triangle numbers is generated by adding the natural numbers.
# So the 7^(th) triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
# The first ten terms would be:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
# 1: 1
# 3: 1,3
# 6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
#
# We can see that 28 is the first triangle number to have over five divisors.
# What is the value of the first triangle number to have over five hundred divisors?

tn = i = 1
over = 500

result = loop do
	tn += i += 1
	dn = 0
	2.upto(Math.sqrt(tn).floor) do |d|
		dn += 1 if tn % d == 0
	end
	dn *= 2
	dn += 2
	break tn if dn >= over
end

puts result
