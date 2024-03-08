# frozen_string_literal: true

def substrings(text, sub_strings)
  result = Hash.new(0)
  sub_strings.each do |word|
    matches = text.scan(word).length
    result[word] = matches unless matches.zero?
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings 'below', dictionary
p substrings "Howdy partner, sit down! How's it going?", dictionary
