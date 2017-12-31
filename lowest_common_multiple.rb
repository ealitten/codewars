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