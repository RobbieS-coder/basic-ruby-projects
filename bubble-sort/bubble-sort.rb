def bubble_sort(arr)
	switched = true

	while switched == true
		switched = false
		arr.each_index do |i|
			if i < arr.length - 1 && arr[i] > arr[i + 1]
				temp = arr[i + 1]
				arr[i + 1] = arr[i]
				arr[i] = temp
				switched = true
			end
		end
	end

	arr
end