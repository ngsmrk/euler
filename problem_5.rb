# naive slow solution!!

i = 0

def divisible(number, range)
  range.each do | num |
    return false unless number % num == 0
  end
end

while true

  i += 1

  puts i

  break if divisible(i, (1..20))
end

puts "answer : #{i}"
