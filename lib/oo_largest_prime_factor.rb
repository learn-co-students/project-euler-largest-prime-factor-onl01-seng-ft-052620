# Enter your object-oriented solution here!

class LargestPrimeFactor
attr_accessor :num

def initialize(num)
    @num = num
end

def number
    division = Prime.prime_division(self.num)
    division[-1][0]
end


end