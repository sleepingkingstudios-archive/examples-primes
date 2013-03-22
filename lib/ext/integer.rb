# lib/ext/number.rb

class Integer
  def prime_factors
    return [] if self < 2
    
    base, factors, index, step, limit = self, [], 1, 4, Math.sqrt(self)
    
    (factors << 2; base >>= 1) while 0 == (base & 1)
    (factors << 3; base /=  3) while 0 == (base % 3)
    
    while (index += step) <= limit
      step = step == 2 ? 4 : 2
      (factors << index; base /= index) while 0 == base % index
    end # while
    
    factors << base if base >= limit
    factors
  end # method factors
end # class
