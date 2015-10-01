def stock_picker(prices)
	buy_pick = 0
	sell_pick = 0
	profit = 0
	
	# start at beginning of array as buy
	# compare each element after for profit
	# update profit variable with the calculated if it is higher
	# also update days picked when higher profit found

	prices.each_with_index do |buy_price, buy_index|
		prices.each_with_index do |sell_price, sell_index|
			if (sell_price - buy_price > profit && buy_index < sell_index)
				profit = sell_price - buy_price
				buy_pick = buy_index
				sell_pick = sell_index
			end
		end
	end

	puts "Buy index: #{buy_pick}\tSell index: #{sell_pick}"
	puts "Bought stock for #{prices[buy_pick]} and sold for #{prices[sell_pick]}"
	puts "Profit made: #{profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])