def divisors(number)
  (2..(Math.sqrt(number).to_i)).select { | a | number % a == 0 }
end

def prime?(number)
  divisors(number).empty?
end

number = 600851475143
divisors(number).select { | n | prime?(n) }.reverse.first
