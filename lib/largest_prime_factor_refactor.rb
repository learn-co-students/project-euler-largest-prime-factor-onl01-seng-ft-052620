# # Enter your procedural solution here!

# - The prime factors of 13195 are 5, 7, 13 and 29. The largest prime factor in this case is 29.
# - What is the largest prime factor of the number 600851475143 ?
########################
# why are 5 7 13 and 29 the only prime factors
# what is a prime factor: factor of given number that is also a prime number
# will need a definition for prime. however, this will costly on very large numbers...
# will need to slim down how many routines we run...

# what happens with huge numbers, if we have nested roots ie bigOh at n^2, or n^3 that's bad. even half our number is a huge data set.
# what are the numbers factors, and which are prime...this type of evaluation will take forever...
# take that data set and query for largest, and give the back when calling largest_prime_factor 
# find largest prime factor
########################

#determine if factor of our given number

# to evaluate  if prime


# are those factors prime? if so return them in an array that we can then use in last method

  # the return of collect_prime_factor can be used here
  # sort small to large, remove last...no need already sorted by previous iteration
  # consider time spent sorting could be saved with binary tree
  
  ####BREAKING ON HUGE LIMITS
  
  ##PROBLEMS WITH ABOVE METHODOLOGY
  
  # very lengthy, and doesn't use efficent data structure.
  # to call a huge n, our big oh here is n^3 i beleive.
  # if the math could do fewer routines...
  # more research revealed a better what to consider what a prime factor is.
  # improved routine---->
  # lets say input is 40
  # you could say that starting from the first prime number, ie 2
  # i * i is 4 which is less than 40
  # 40 / 2 = 20, so now input is 20, i is 3, run again
  # i * i is 9, good
  # 20 / 9 =/= 0
 
  
  def largest_prime_factor(input)
    # going to divide and reassign the input during routine, so it 
    output = input
    # start a loop that will immediately break if the input
    i=2
      # so long as i^2 is less than or equal the input, it can be a multiple. if i^2 is > input, it can all ready be ruled out due to mathetatics.
      # binary search tree will speed things up.
      while i * i <= output
        # so long as the input divided by the index of the loop evaluate that its a multiple
        # set the input to input / i
        # increase i and run routine again
        while output % i == 0
          # divide and assign
          output /= i
          # 
          break if output == i 
        end
        #increase i 
        i += 1
      end
    output
  end

  print largest_prime_factor(13195)
  #should print 29

  # print largest_prime_factor(4)


  ###### THIS IS THE ULTIMATE SHORTCUT

  # require 'prime'
  
  # def largest_prime_factor(input)
  #   print Prime.prime_division(input).last[0]
  # end
  
  # largest_prime_factor(600851475143)

    ######
  # could always get more refactored...






  ### considering it was once this bellow

#   # # Enter your procedural solution here!

# # - The prime factors of 13195 are 5, 7, 13 and 29. The largest prime factor in this case is 29.
# # - What is the largest prime factor of the number 600851475143 ?
# ########################
# # what is a prime factor - evaluate
# # why are 5 7 13 adn 29 the only prime factors
# # basically, what are the prime numbers between 1 to the limit?
# # which of those are a factor of said limit
# # take that data set and query for largest, and give the back when calling largest_prime_factor 
# # find largest prime factor
# ########################

# #determine if factor of our given number
# def factors_of(limit)
#   factors = Array.new
  
#     for x in 1...limit do
#       # limit divided by any number has no remainder
#       if limit % x == 0
#         factors.push(x)
#       end
#     end
#   return factors
# end 

# # to evaluate  if prime
# def is_prime(num)
#   n = 2
#     while n < num
#       return false if num % n == 0
#       n += 1
#     end
#   true
# end

# # are those factors prime? if so return them in an array that we can then use in last method

# def prime_factors(limit)
#   primes = Array.new
#    factors_of(limit).each do |factor|
#       if (is_prime(factor))
#         primes.push(factor)
#       end
#    end
#   return primes
# end

# def largest_prime_factor(input)
#   # the return of collect_prime_factor can be used here
#   # sort small to large, remove last...no need already sorted by previous iteration
#   # consider time spent sorting could be saved with binary tree
#   return prime_factors(input).last
    
# end 

# # # ##TESTS
# print is_prime(22)
# # # true
# # print factors_of(841)
# # # [1, 2, 4, 5, 8, 10, 20]
# # print prime_factors(841)
# # # [1, 2, 5]
# # print largest_prime_factor(841)
# # # 5

# ####BREAKING ON HUGE LIMITS

# ##PROBLEMS WITH THIS METHODOLOGY

# #very lengthy, and doesn't use efficent data structure.
# # to call a huge n, our big oh here is n^3 i beleive.
# # if the math could do fewer routines... 