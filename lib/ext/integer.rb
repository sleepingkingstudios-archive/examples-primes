# lib/ext/number.rb

class Integer
  # @return [Array<Integer>] The prime factors of the integer in ascending
  #   order. If the factor has a multiplicity of N, it appears in the array N
  #   times.
  # @example Find all prime factors of an integer.
  #   60.prime_factors #=> [2, 2, 3, 5]
  # @example Find all unique prime factors of an integer.
  #   60.prime_factors.uniq #=> [2, 3, 5]
  # @example Find the greatest prime factor of an integer.
  #   60.prime_factors.last #=> 5
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
