# naive slow solution!!

start_time = Time.now

i = 0
upper_number = 20

def divisible(number, range)
  range.each do | num |
    return false unless number % num == 0
  end
end

while true

  i += upper_number

  puts i

  break if divisible(i, (1..upper_number))
end

elapsed_time = Time.now - start_time

puts "Elapsed time : #{elapsed_time}"

puts "answer : #{i}"
