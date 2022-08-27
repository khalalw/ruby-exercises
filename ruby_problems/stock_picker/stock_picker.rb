# Implement a method stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair days representing
# the best day to buy and the best day to sell. Days start at 0
class Solution
  # @param [Array<Integer>] stock_prices
  def stock_picker(stock_prices)
    min_price = Float::INFINITY
    max_profit = 0
    min_idx = nil
    buy_dates = []

    stock_prices.each_with_index do |price, idx|
      if price < min_price
        min_idx = idx
        min_price = price
      end

      profit = price - min_price
      if profit > max_profit
        max_profit = profit
        buy_dates = [min_idx, idx]
      end
    end

    buy_dates
  end
end
