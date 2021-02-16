require 'prime'

def lpf(n)
  p Prime.prime_division(n).last[0]
end

lpf(600851475143)