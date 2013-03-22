# lib/ext/number.rb

class Integer
  def prime_factors
    return [] if self < 2
    
    base, factors, index, step = self, [], 1, 2
    (factors << 2; base >>= 1) while 0 == (base & 1)
    while (index += step) < self
      (factors << index; base /= index) while 0 == base % index
    end # while
    
    factors.empty? ? [self] : factors
  end # method factors
end # class
