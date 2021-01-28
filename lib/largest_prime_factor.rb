# Enter your procedural solution here!
# def largest_prime_factor(num)
#     prime = 1

#     (2..num).each do |i|
#         if (num % i == 0 && is_prime(i))
#             prime = i
#         end
#     end

#     prime
# end

# def is_prime(num)
#     (2...num).each do |i|
#         if (num % i == 0)
#             return false
#         end
#     end
#     true
# end

def largest_prime_factor(x)
    prime = x
    (2..Math.sqrt(x).to_i).each do |i|
      break if prime <= i
      prime /= i while (prime > i && prime % i == 0)
    end
    prime
  end