# Enter your procedural solution here!
require 'Prime'

def largest_prime_factor(input)

division = Prime.prime_division(input)
division[-1][0]


end