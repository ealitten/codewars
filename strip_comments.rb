# Strip Comments - 4kyu
# https://www.codewars.com/kata/51c8e37cee245da6b40000bd
# Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

def solution(input, markers)
    pattern = Regexp.union(markers)
    input.split("\n").map! {|line| line.index(pattern).nil? ? line : line.slice(0,line.index(pattern)).rstrip! }.join("\n")
end