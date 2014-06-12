def stock_picker(prices)
	biggest_profit = 0
	small_index = 0
	big_index = 0
	prices.each do |price|
		prices.each do |price2|
			next if (prices.index(price2) <= prices.index(price))
			if ((price2 - price) > biggest_profit)
				biggest_profit = price2 - price
				small_index = prices.index(price)
				big_index = prices.index(price2)
			end
		end
	end
	return [small_index, big_index]
end
