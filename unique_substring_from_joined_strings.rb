# Unique Substring From Joined Strings - 5kyu
# https://www.codewars.com/kata/5778aa7c82d7d0b49c00001a
# Write a function that takes two strings, A and B, and returns the length of the longest possible substring that can be formed from either the concatenation A + B or B + A containing only characters that do not appear in both A and B.

    def find_longest(a, b)
        dup_chars = Regexp.union(a.chars & b.chars)
        substrings = (a+b).split(dup_chars) + (b+a).split(dup_chars)
        substrings.empty? ? 0 : substrings.max_by(&:length).length
      end