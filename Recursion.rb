class Recursion
	def fibonacci (num)
		if ( num < 2)
			return 1
		else
			num1 = 1
			num2 = 1
			total = 0
			(num-1).times do
				total = num1 + num2
				num1 = num2
				num2 = total
			end
			return total
		end
	end

	def fibonacci_recursive ( num )
		if (num < 2)
			return 1
		else
			return fibonacci_recursive(num-1) + fibonacci_recursive(num-2)
		end
	end
end

test = Recursion.new
puts test.fibonacci_recursive(5)
puts test.fibonacci(5)
