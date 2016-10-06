def stock_picker(array)
	buying_price = 0
	selling_price = 0
	values = array.sort
	result = []
	if values[0] == array.last
		values.pop!
	elsif values[-1] == array.first
		values.shift
	end
	buying_price = values[0]
	if array.index(array.max) < array.index(buying_price)
		values.delete(array.max)
	end
	selling_price = values.last
	result = [buying_price, selling_price]
	puts "#{result}  for a profit of $#{selling_price} - $#{buying_price} == $#{selling_price - buying_price}."
end

stock_picker([17 ,3, 6, 9, 15, 8, 6, 1, 10])