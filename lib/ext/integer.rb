# lib/ext/number.rb

class Integer
  def prime_factors
    return [] if self < 2
    
    base, factors, index, step, limit = self, [], 1, 2, Math.sqrt(self)
    (factors << 2; base >>= 1) while 0 == (base & 1)
    while (index += step) <= limit
      (factors << index; base /= index) while 0 == base % index
    end # while
    
    factors << base if base >= limit
    factors
  end # method factors
end # class
