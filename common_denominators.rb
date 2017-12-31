# Common Denominators - 5kyu
# https://www.codewars.com/kata/common-denominators/ruby
# You will have a list of rationals in the form [ [numer_1, denom_1] , ... [numer_n, denom_n] ] where all numbers are positive ints. 

def convertFracts(lst)
    denoms = []
    lst.each { |frac| denoms << frac[1]}
    lcd = denoms.reduce(:lcm)
    lst.each {|frac| frac[0] = lcd/frac[1]*frac[0]; frac[1] = lcd}
  end