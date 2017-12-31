numbers = {
6 => "SIX",
8 => "EIGHT",
2 => "TWO",
4 => "FOUR",
3 => "THREE",
5 => "FIVE",
7 => "SEVEN",
1 => "ONE",
9 => "NINE"}

output = ""

numbers.each { |digit,word|
    while word.chars.all? { |x| string.include? x }
        word.chars.each { |x| string.slice!(string.index(x)) }
        output << digit.to_s
    end
}

output.chars.join.sort