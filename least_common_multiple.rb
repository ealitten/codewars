# Least Common Multiple - 5kyu
# https://www.codewars.com/kata/5259acb16021e9d8a60010af
# Write a function that calculates the least common multiple of its arguments; each argument is assumed to be a non-negative integer. In the case that there are no arguments (or the provided array in compiled languages is empty), return 1.

def gcd(a,b)
    while b != 0
        t = b
        b = a % b
        a = t
    end
    a
end

def lcm(a,b)
    (a*b)/gcd(a,b)
end

until input.length == 1
    input[1] = lcm(input[0],input[1])
    input.shift
end

input[0]