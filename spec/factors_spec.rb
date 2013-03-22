# spec/factors_spec.rb

require 'spec_helper'

require 'ext/integer.rb'

describe Integer do
  def self.factors
    { 1  => [],
      2  => [2],
      3  => [3],
      4  => [2, 2],
      5  => [5],
      6  => [2, 3],
      10 => [2, 5],
      18 => [2, 3, 3],
      25 => [5, 5],
      60 => [2, 2, 3, 5],
      13195 => [5, 7, 13, 29],
      1876191413 => [853, 2199521]
    } # end hash factors
  end # class method self.factors
  
  factors.each do |number, factors|
    context do
      specify { expect(number).to respond_to(:prime_factors).with(0).arguments }
      
      specify { expect(number.prime_factors).to eq factors }
    end # anonymous context
  end # each
end # describe
