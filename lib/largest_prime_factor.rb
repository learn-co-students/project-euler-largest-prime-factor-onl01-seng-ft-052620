def largest_prime_factor(input)
  output = input
  i=2 
    while i * i <= output   
      while output % i == 0   
        output /= i    
        break if output == i 
      end
      i += 1
    end
  print output
end

largest_prime_factor(13195)