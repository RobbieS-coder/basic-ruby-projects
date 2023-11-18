def stock_picker(stock)
	best_profit = 0
	best_days = []

	stock.each_index do |buy|
		for sell in (buy + 1 .. stock.length - 1)
			current_profit = stock[sell] - stock[buy]
			if current_profit > best_profit
				best_profit = current_profit
				best_days = [buy, sell]
			end
		end
	end

	best_days
end