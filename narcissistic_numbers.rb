# Narcissistic Number - 6kyu
# 
# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.

def narcissistic?( value )
    value == value.to_s.split("").map! {|x| x.to_i ** value.to_s.length}.reduce(:+)
  end
