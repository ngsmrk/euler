def stop?(x)
	return x == 1 ? true : false
end

def division_returns_zero?(dividend, divisor)
	return (dividend % divisor == 0) ? true : false
end

def prime?(number, divisor)
	return false if number != 2 && number % 2 == 0
	return true if stop? divisor
	division_returns_zero = division_returns_zero?(number, divisor)
	puts "n: #{number} d: #{divisor} output: #{division_returns_zero}"
	return false if division_returns_zero
	return prime?(number, divisor-1)			
end

def loop(number)
	puts "#{number}"
	return prime? number, number-1
end

def next_prime(number)
	prime_found = false
	next_number = number

	while !prime_found
		next_number = next_number + 1
		prime_found = loop next_number
	end

	next_number
end

def next_primes(number, quantity)
	next_primes = []
	next_number = number
	puts "next_number: #{next_number}"

	while next_primes.size != quantity		
		puts "next_number: #{next_number}"
		next_prime = next_prime(next_number)
		puts "next_prime: #{next_prime}"
		next_number = next_prime
		next_primes << next_prime
	end

	next_primes
end