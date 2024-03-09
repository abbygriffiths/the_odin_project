# frozen_string_literal: true

def stock_picker(prices = [])
  prices
    # enumerate
    .each_with_index
    .to_a
    .combination(2)
    .max_by { |buy, sell| sell[0] - buy[0] }
    # remove index
    .map { |_, day| day }
end

input = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker input
