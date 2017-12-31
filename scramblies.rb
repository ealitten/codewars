# Scramblies - 5kyu
# https://www.codewars.com/kata/55c04b4cc56a697bb0000048
# Write function scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

def scramble(s1,s2)
    s2.chars.uniq.all?{|i|  s1.count(i) >= s2.count(i)} 
end